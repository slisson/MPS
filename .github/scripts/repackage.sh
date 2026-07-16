#!/usr/bin/env bash
# Repackages the raw Ant distribution artifacts into release files that match
# the layout of the official JetBrains downloads:
#   - renames artifacts from <build.number>-* to MPS-<version>-*
#   - bundles the JetBrains Runtime (JBR) into the Linux tar.gz and the macOS
#     zips (the plain Ant build only embeds it into the Windows zip; TeamCity
#     adds it for the other platforms in a separate step)
#   - generates SHA-256 checksums
#
# usage: repackage.sh <build.number> <version-dashed> <version-spaced>
#   e.g.: repackage.sh MPS-251.28774.7 2025.1.2-PERF.1 "2025.1.2 PERF.1"
set -euo pipefail

BN="$1"          # build number used by the Ant build, e.g. MPS-251.28774.7
FULL="$2"        # dashed version used in file names, e.g. 2025.1.2-PERF.1
APPVER="$3"      # spaced version used in directory names, e.g. "2025.1.2 PERF.1"

DIST="build/artifacts/mpsDistribution"
JBR="build/resources/openJDK"
OUT="$PWD/release"

rm -rf "$OUT"
mkdir -p "$OUT"

echo "Distribution artifacts produced by the build:"
ls -lh "$DIST"

# The JBR tarballs from TeamCity normally have a top-level 'jbr' directory;
# rename it if a versioned directory name is used instead.
normalize_jbr() {
  local parent="$1"
  if [ ! -d "$parent/jbr" ]; then
    local d
    d="$(find "$parent" -maxdepth 1 -type d \( -name 'jbr*' -o -name 'jdk*' \) | head -n 1)"
    if [ -z "$d" ]; then
      echo "ERROR: no JBR directory found in $parent" >&2
      exit 1
    fi
    mv "$d" "$parent/jbr"
  fi
}

# --- universal zip (no bundled JBR, same as the official one) ---------------
cp "$DIST/$BN.zip" "$OUT/MPS-$FULL.zip"

# --- Windows zip (JBR already bundled by the Ant build) ---------------------
cp "$DIST/$BN-windows.zip" "$OUT/MPS-$FULL-windows.zip"

# --- Linux tar.gz + JBR ------------------------------------------------------
work="$(mktemp -d)"
tar xzf "$DIST/$BN-linux.tar.gz" -C "$work"
appdir="$work/MPS $APPVER"
if [ ! -d "$appdir" ]; then
  echo "ERROR: expected directory 'MPS $APPVER' in linux tar, found:" >&2
  ls "$work" >&2
  exit 1
fi
tar xzf "$JBR/jbr-linux-x64.tar.gz" -C "$appdir" --exclude='._*'
normalize_jbr "$appdir"
tar czf "$OUT/MPS-$FULL-linux.tar.gz" -C "$work" "MPS $APPVER"
rm -rf "$work"

# --- macOS zips + JBR --------------------------------------------------------
repack_mac() {
  local zipname="$1" jbrtar="$2" outname="$3"
  local work app
  work="$(mktemp -d)"
  unzip -q "$DIST/$zipname" -d "$work"
  app="$(ls "$work")"   # single top-level entry, normally MPS.app
  tar xzf "$JBR/$jbrtar" -C "$work/$app/Contents" --exclude='._*'
  normalize_jbr "$work/$app/Contents"
  mv "$work/$app" "$work/MPS $APPVER.app"
  (cd "$work" && zip -qry "$OUT/$outname" "MPS $APPVER.app")
  rm -rf "$work"
}
repack_mac "$BN-macos.zip"         "jbr-osx-x64.tar.gz"     "MPS-$FULL-macos.zip"
repack_mac "$BN-macos-aarch64.zip" "jbr-osx-aarch64.tar.gz" "MPS-$FULL-macos-aarch64.zip"

# --- checksums ----------------------------------------------------------------
(cd "$OUT" && sha256sum -- * > "MPS-$FULL-checksums.sha256")

echo "Release files:"
ls -lh "$OUT"

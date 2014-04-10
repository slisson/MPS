<?xml version="1.0" encoding="UTF-8"?>
<language namespace="jetbrains.mps.samples.richtext" uuid="0e10c6eb-2b0f-4150-b681-4e5505d8baaf">
  <models>
    <modelRoot contentPath="${module}" type="default">
      <sourceRoot location="languageModels" />
    </modelRoot>
  </models>
  <accessoryModels />
  <generators>
    <generator generatorUID="jetbrains.mps.samples.richtext#5232239503568939210" uuid="a6e95086-2315-4cef-a650-16e787b6c868">
      <models>
        <modelRoot contentPath="${module}" type="default">
          <sourceRoot location="generator/template" />
        </modelRoot>
      </models>
      <external-templates />
      <usedLanguages>
        <usedLanguage>b401a680-8325-4110-8fd3-84331ff25bef(jetbrains.mps.lang.generator)</usedLanguage>
        <usedLanguage>d7706f63-9be2-479c-a3da-ae92af1e64d5(jetbrains.mps.lang.generator.generationContext)</usedLanguage>
        <usedLanguage>0e10c6eb-2b0f-4150-b681-4e5505d8baaf(jetbrains.mps.samples.richtext)</usedLanguage>
      </usedLanguages>
      <usedDevKits>
        <usedDevKit>fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)</usedDevKit>
      </usedDevKits>
      <mapping-priorities />
    </generator>
  </generators>
  <sourcePath />
  <dependencies>
    <dependency reexport="false">92d2ea16-5a42-4fdf-a676-c7604efe3504(jetbrains.mps.editor.richtext)</dependency>
  </dependencies>
  <usedLanguages>
    <usedLanguage>31c91def-a131-41a1-9018-102874f49a12(jetbrains.mps.editor.multiline)</usedLanguage>
  </usedLanguages>
  <usedDevKits>
    <usedDevKit>2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)</usedDevKit>
  </usedDevKits>
  <extendedLanguages>
    <extendedLanguage>f3061a53-9226-4cc5-a443-f952ceaf5816(jetbrains.mps.baseLanguage)</extendedLanguage>
    <extendedLanguage>92d2ea16-5a42-4fdf-a676-c7604efe3504(jetbrains.mps.editor.richtext)</extendedLanguage>
  </extendedLanguages>
</language>


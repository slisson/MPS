/*
 * Copyright 2003-2013 JetBrains s.r.o.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package jetbrains.mps.editor.runtime.style;

import jetbrains.mps.openapi.editor.style.StyleAttribute;
import jetbrains.mps.openapi.editor.style.StyleRegistry;
import org.jetbrains.mps.openapi.model.SNode;

import java.awt.Color;
import java.awt.Font;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/**
 * User: shatalin
 * Date: 1/14/13
 */
public class StyleAttributes {
  private static List<StyleAttribute> ourAttributes = new ArrayList<StyleAttribute>();
  private static List<StyleAttribute> ourNotSimpleAttributes = new ArrayList<StyleAttribute>();

  static int getAttributesCount() {
    return ourAttributes.size();
  }

  static List<StyleAttribute> getAttributes() {
    return Collections.unmodifiableList(ourAttributes);
  }

  static List<StyleAttribute> getNotSimpleAttributes() {
    return Collections.unmodifiableList(ourNotSimpleAttributes);
  }

  static StyleAttribute getAttribute(int index) {
    return ourAttributes.get(index);
  }

  static int register(StyleAttribute a) {
    // copy on write to be thread-safe
    List<StyleAttribute> newOurAttributes = new ArrayList<StyleAttribute>(ourAttributes);
    List<StyleAttribute> newOurNotSimpleAttributes = new ArrayList<StyleAttribute>(ourNotSimpleAttributes);
    newOurAttributes.add(a);
    if (!isSimple(a)) {
      newOurNotSimpleAttributes.add(a);
    }
    ourAttributes = newOurAttributes;
    ourNotSimpleAttributes = newOurNotSimpleAttributes;
    return newOurAttributes.size() - 1;
  }

  static boolean isSimple(StyleAttribute a) {
    return a instanceof SimpleStyleAttribute;
  }

  public static final StyleAttribute<Color> BACKGROUND_COLOR = new InheritableStyleAttribute<Color>("background-color");
  public static final StyleAttribute<Color> BRACKETS_COLOR = new InheritableStyleAttribute<Color>("bracket-color", Color.BLACK);
  public static final StyleAttribute<Color> TEXT_COLOR = new InheritableStyleAttribute<Color>("text-color", StyleRegistry.getInstance() != null ? StyleRegistry.getInstance().getEditorForeground() : Color.BLACK);
  public static final StyleAttribute<Color> NULL_TEXT_COLOR = new InheritableStyleAttribute<Color>("null-text-color", StyleRegistry.getInstance() != null ? StyleRegistry.getInstance().getColor("DEFAULT_NULL_TEXT_COLOR") : Color.GRAY);
  public static final StyleAttribute<Color> TEXT_BACKGROUND_COLOR = new InheritableStyleAttribute<Color>("text-background-color");
  public static final StyleAttribute<Color> NULL_TEXT_BACKGROUND_COLOR = new InheritableStyleAttribute<Color>("null-text-color");
  public static final StyleAttribute<Color> SELECTED_TEXT_BACKGROUND_COLOR = new InheritableStyleAttribute<Color>("selected-text-background-color");
  public static final StyleAttribute<Color> NULL_SELECTED_TEXT_BACKGROUND_COLOR = new InheritableStyleAttribute<Color>("null-selected-text-color");

  public static final StyleAttribute<Boolean> DRAW_BRACKETS = new SimpleStyleAttribute<Boolean>("draw-brackets", false);
  public static final StyleAttribute<Boolean> DRAW_BORDER = new SimpleStyleAttribute<Boolean>("draw-border", false);
  public static final StyleAttribute<Boolean> SELECTABLE = new SimpleStyleAttribute<Boolean>("selectable", true);
  public static final StyleAttribute<Boolean> EDITABLE = new SimpleStyleAttribute<Boolean>("editable", true);
  public static final StyleAttribute<Boolean> UNDERLINED = new SimpleStyleAttribute<Boolean>("underlined", false);
  public static final StyleAttribute<Boolean> STRIKE_OUT = new SimpleStyleAttribute<Boolean>("deprecated", false);

  public static final StyleAttribute<Boolean> BASE_LINE_CELL = new SimpleStyleAttribute<Boolean>("baseLineCell", false);
  public static final StyleAttribute<DefaultBaseLine> DEFAULT_BASE_LINE = new SimpleStyleAttribute<DefaultBaseLine>("default-baseline", DefaultBaseLine.FIRST);

  public static final StyleAttribute<Boolean> CONTROL_OVERED_REFERENCE = new SimpleStyleAttribute<Boolean>("control-overed-reference", false);

  public static final StyleAttribute<String> RT_ANCHOR_TAG = new SimpleStyleAttribute<String>("rt-anchor-tag", SideTransformTagUtils.getDefaultSideTransformTag());
  public static final StyleAttribute<String> LAYOUT_CONSTRAINT = new SimpleStyleAttribute<String>("layout-constraint");
  public static final StyleAttribute<FocusPolicy> FOCUS_POLICY = new SimpleStyleAttribute<FocusPolicy>("focus-policy", FocusPolicy.NONE);
  public static final StyleAttribute<CaretPosition> DEFAULT_CARET_POSITION = new SimpleStyleAttribute<CaretPosition>("default-caret-position");
  public static final StyleAttribute<Boolean> AUTO_DELETABLE = new SimpleStyleAttribute<Boolean>("auto-deletable", false);

  public static final StyleAttribute<Integer> FONT_STYLE = new InheritableStyleAttribute<Integer>("font-style", Font.PLAIN);
  public static final StyleAttribute<Integer> FONT_SIZE = new InheritableStyleAttribute<Integer>("font-size");

  public static final StyleAttribute<Padding> PADDING_LEFT = new SimpleStyleAttribute<Padding>("padding-left", new Padding(0.0));
  public static final StyleAttribute<Padding> PADDING_RIGHT = new SimpleStyleAttribute<Padding>("padding-right", new Padding(0.0));
  public static final StyleAttribute<Padding> PADDING_TOP = new SimpleStyleAttribute<Padding>("padding-top", new Padding(0.0));
  public static final StyleAttribute<Padding> PADDING_BOTTOM = new SimpleStyleAttribute<Padding>("padding-bottom", new Padding(0.0));

  public static final StyleAttribute<Boolean> FIRST_POSITION_ALLOWED = new SimpleStyleAttribute<Boolean>("first-position-allowed", true);
  public static final StyleAttribute<Boolean> LAST_POSITION_ALLOWED = new SimpleStyleAttribute<Boolean>("last-position-allowed", true);

  public static final StyleAttribute<Boolean> PUNCTUATION_LEFT = new SimpleStyleAttribute<Boolean>("punctuation-left", false);
  public static final StyleAttribute<Boolean> PUNCTUATION_RIGHT = new SimpleStyleAttribute<Boolean>("punctuation-right", false);

  public static final StyleAttribute<Padding> HORIZONTAL_GAP = new SimpleStyleAttribute<Padding>("horizontal-gap", new Padding(1.0));

  public static final StyleAttribute<String> POSITION = new SimpleStyleAttribute<String>("position");
  public static final StyleAttribute<String> POSITION_CHILDREN = new SimpleStyleAttribute<String>("position-children");

  public static final StyleAttribute<String> NAVIGATABLE_REFERENCE = new SimpleStyleAttribute<String>("navigatableReference");

  public static final StyleAttribute<CellAlign> HORIZONTAL_ALIGN = new SimpleStyleAttribute<CellAlign>("horizontal-align", CellAlign.LEFT);
  public static final StyleAttribute<String> MATCHING_LABEL = new SimpleStyleAttribute<String>("matching-label", null);

  public static final StyleAttribute<Boolean> INDENT_LAYOUT_INDENT = new SimpleStyleAttribute<Boolean>("indent-layout-indented", false);
  public static final StyleAttribute<Boolean> INDENT_LAYOUT_INDENT_ANCHOR = new SimpleStyleAttribute<Boolean>("indent-layout-indent-anchor", false);
  public static final StyleAttribute<Boolean> INDENT_LAYOUT_WRAP_ANCHOR = new SimpleStyleAttribute<Boolean>("indent-layout-wrap-anchor", false);
  public static final StyleAttribute<Boolean> INDENT_LAYOUT_NEW_LINE = new SimpleStyleAttribute<Boolean>("indent-layout-new-line", false);
  public static final StyleAttribute<Boolean> INDENT_LAYOUT_ON_NEW_LINE = new SimpleStyleAttribute<Boolean>("indent-layout-on-new-line", false);
  public static final StyleAttribute<Boolean> INDENT_LAYOUT_CHILDREN_NEWLINE = new SimpleStyleAttribute<Boolean>("indent-layout-children-new-line", false);
  public static final StyleAttribute<Boolean> INDENT_LAYOUT_NO_WRAP = new SimpleStyleAttribute<Boolean>("indent-layout-no-wrap", false);

  public static final StyleAttribute<ParametersInformation> PARAMETERS_INFORMATION = new SimpleStyleAttribute<ParametersInformation>("parameters-information");

  public static final StyleAttribute<ScriptKind> SCRIPT_KIND = new SimpleStyleAttribute<ScriptKind>("script-kind", ScriptKind.NORMAL);
  public static final StyleAttribute<Integer> ORIGINAL_FONT_SIZE = new SimpleStyleAttribute<Integer>("original-font-size");
  public static final StyleAttribute<TableComponent> TABLE_COMPONENT = new SimpleStyleAttribute<TableComponent>("table-component", TableComponent.HORIZONTAL_COLLECTION);

  public static final StyleAttribute<SNode> NAVIGATABLE_NODE = new SimpleStyleAttribute<SNode>("navigatable-node");

  public static final StyleAttribute<Integer> MAX_WIDTH = new SimpleStyleAttribute<Integer>("max.width");
}

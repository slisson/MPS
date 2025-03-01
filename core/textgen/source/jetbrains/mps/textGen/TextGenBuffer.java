/*
 * Copyright 2003-2014 JetBrains s.r.o.
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
package jetbrains.mps.textGen;

import jetbrains.mps.messages.IMessage;
import jetbrains.mps.messages.Message;
import jetbrains.mps.messages.MessageKind;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.model.SNode;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;

/**
 * User: Dmitriev.
 * Date: Dec 22, 2003
 */
public final class TextGenBuffer {

  public static final int TOP = 0;
  public static final int DEFAULT = 1;

  public static final String LINE_SEPARATOR = System.getProperty("line.separator");
  public static final String SPACES = "                                ";

  private StringBuilder[] myBuffers;
  private StringBuilder myCurrentBuffer;

  private int myCurrBufferKey = DEFAULT;
  private HashMap myUserObjects = new HashMap();

  private final int myIndent = 2;
  private int myDepth = 0;
  private boolean myContainsErrors = false;
  private List<IMessage> myErrors = new ArrayList<IMessage>();

  private final int[] myPostions;
  private final int[] myLineNumbers;

  TextGenBuffer(boolean positionsSupport, StringBuilder[] buffers) {
    if (positionsSupport) {
      myPostions = new int[2];
      myLineNumbers = new int[2];
    } else {
      myPostions = null;
      myLineNumbers = null;
    }
    myBuffers = buffers != null ? buffers : new StringBuilder[]{new StringBuilder(2048), new StringBuilder(4096)};
    selectPart(DEFAULT);
  }

  public String getText() {
    final StringBuilder topBuffer = myBuffers[TOP];
    final StringBuilder defaultBuffer = myBuffers[DEFAULT];
    if (topBuffer.length() == 0) {
      return defaultBuffer.toString();
    }
    StringBuilder rv = new StringBuilder(topBuffer.length() + defaultBuffer.length());
    rv.append(topBuffer);
    rv.append(LINE_SEPARATOR);
    rv.append(LINE_SEPARATOR);
    rv.append(defaultBuffer);
    return rv.toString();
  }

  /*package*/ int getTopBufferLineCount() {
    final StringBuilder b = myBuffers[TOP];
    if (b.length() == 0) {
      return 0;
    }
    // this used to be b.split(LINE_SEPARATOR, -1).length + 2
    // however split("A\nB\n").length == split("A\nB").length, and two extra newlines between top and default buffer give different
    // line number (for human-friendly values, latter sample gives correct value, for 0-based indexes - former sample).
    int lineSepIndex = b.indexOf(LINE_SEPARATOR, 0);
    int lineCount = 0;
    while (lineSepIndex != -1) {
      lineCount++;
      lineSepIndex = b.indexOf(LINE_SEPARATOR, lineSepIndex + LINE_SEPARATOR.length());
    }
    // account for newlines added in #getText()
    return lineCount + 2;
  }

  public String getLineSeparator() {
    return LINE_SEPARATOR;
  }

  public boolean hasErrors() {
    return myContainsErrors;
  }

  public Collection<IMessage> problems() {
    return Collections.unmodifiableList(myErrors);
  }

  public void foundError() {
    myContainsErrors = true;
  }

  public void foundError(String error) {
    myContainsErrors = true;
    myErrors.add(prepare(MessageKind.ERROR, error, null));
  }

  public void foundError(String error, @Nullable SNode node, @Nullable Throwable t) {
    myContainsErrors = true;
    myErrors.add(prepare(MessageKind.ERROR, error, node).setException(t));
  }

  private Message prepare(MessageKind kind, String text, @Nullable SNode node) {
    Message message = new Message(kind, text);
    if (node != null) {
      message.setHintObject(node.getReference());
    }
    return message;
  }

  protected void increaseDepth() {
    myDepth++;
  }

  protected void decreaseDepth() {
    myDepth--;
  }

  public void append(String s) {
    // todo: is public ok?
    if (s == null) {
      return;
    }
    if (myPostions != null) {
      int lastLineSepIndex, lineSepIndex;
      lastLineSepIndex = lineSepIndex = s.indexOf(LINE_SEPARATOR, 0);
      if (lastLineSepIndex >= 0) {
        int lineCount = 0;
        while (lineSepIndex != -1) {
          lineCount++;
          lastLineSepIndex = lineSepIndex;
          lineSepIndex = s.indexOf(LINE_SEPARATOR, lineSepIndex + LINE_SEPARATOR.length());
        }
        myLineNumbers[myCurrBufferKey] += lineCount;
        myPostions[myCurrBufferKey] = s.length() - lastLineSepIndex - LINE_SEPARATOR.length();
      } else {
        myPostions[myCurrBufferKey] += s.length();
      }
    }
    myCurrentBuffer.append(s);
  }

    protected void appendWithIndent(String s) {
    indentBuffer();
    append(s);
  }

  protected void indentBuffer() {
    int spaces = myIndent * myDepth;
    if (myPostions != null) {
      myPostions[myCurrBufferKey] += spaces;
    }

    while (spaces > 0) {
      int i = spaces > SPACES.length() ? SPACES.length() : spaces;
      myCurrentBuffer.append(SPACES, 0, i);
      spaces -= i;
    }
  }

  public void putUserObject(Object key, Object o) {
    myUserObjects.put(key, o);
  }

  public Object getUserObject(Object key) {
    return myUserObjects.get(key);
  }

  public String getDefaultBufferText() {
    return myBuffers[DEFAULT].toString();
  }

  public String getTopBufferText() {
    return myBuffers[TOP].toString();
  }

  public int getDefaultBufferLength() {
    return getBufferLength(DEFAULT);
  }

  public int getTopBufferLength() {
    return getBufferLength(TOP);
  }

  public int getBufferLength(int partId) {
    return myBuffers[partId].length();
  }

  public int getLineNumber() {
    if (myLineNumbers == null) throw new IllegalStateException();
    return myLineNumbers[DEFAULT];
  }

  public int getPosition() {
    if (myPostions == null) throw new IllegalStateException();
    return myPostions[DEFAULT];
  }

  public boolean hasPositionsSupport() {
    return myPostions != null;
  }

  public int selectPart(int partId) {
    int currPartId = myCurrBufferKey;
    myCurrBufferKey = partId;
    myCurrentBuffer = myBuffers[partId];
    return currPartId;
  }
}

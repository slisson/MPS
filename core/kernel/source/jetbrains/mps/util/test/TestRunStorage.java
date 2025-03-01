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
package jetbrains.mps.util.test;

import org.jetbrains.annotations.Nullable;

import java.util.concurrent.ConcurrentHashMap;

/**
 * @author Alex Pyshkin on 5/11/14.
 */
public class TestRunStorage {
  private final static ConcurrentHashMap<Long, Object> USER_OBJECTS = new ConcurrentHashMap<Long, Object>();

  private TestRunStorage() {
  }

  @Nullable
  public static Object getUserObject(long id) {
    return USER_OBJECTS.get(id);
  }

  public static void putUserObject(long id, Object value) {
    USER_OBJECTS.put(id, value);
  }
}

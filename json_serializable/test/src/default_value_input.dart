// Copyright (c) 2018, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

part of 'json_serializable_test_input.dart';

@JsonSerializable()
class DefaultWithSymbol {
  @JsonKey(defaultValue: #symbol)
  Object field;

  DefaultWithSymbol();
}

int _function() => 42;

@JsonSerializable()
class DefaultWithFunction {
  @JsonKey(defaultValue: _function)
  Object field;

  DefaultWithFunction();
}

@JsonSerializable()
class DefaultWithType {
  @JsonKey(defaultValue: Object)
  Object field;

  DefaultWithType();
}

@JsonSerializable()
class DefaultWithConstObject {
  @JsonKey(defaultValue: const Duration())
  Object field;

  DefaultWithConstObject();
}

enum Enum { value }

@JsonSerializable()
class DefaultWithEnum {
  @JsonKey(defaultValue: Enum.value)
  Object field;

  DefaultWithEnum();
}

// TODO: nullable-false + default value

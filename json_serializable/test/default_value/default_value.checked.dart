// Copyright (c) 2018, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Generator: _CheckedGenerator
// **************************************************************************

// ignore_for_file: annotate_overrides

import 'package:json_annotation/json_annotation.dart';

import 'default_value_interface.dart' as dvi;

part 'default_value.checked.g.dart';

const _intValue = 42;

dvi.DefaultValue fromJson(Map<String, dynamic> json) =>
    new DefaultValue.fromJson(json);

@JsonSerializable()
class DefaultValue extends Object
    with _$DefaultValueSerializerMixin
    implements dvi.DefaultValue {
  @JsonKey(defaultValue: true)
  bool fieldBool;

  @JsonKey(defaultValue: 'string')
  String fieldString;

  @JsonKey(defaultValue: _intValue)
  int fieldInt;

  @JsonKey(defaultValue: 3.14)
  double fieldDouble;

  @JsonKey(defaultValue: [])
  List fieldListEmpty;

  @JsonKey(defaultValue: {})
  Map fieldMapEmpty;

  @JsonKey(defaultValue: [1, 2, 3])
  List<int> fieldListSimple;

  @JsonKey(defaultValue: {'answer': 42})
  Map<String, int> fieldMapSimple;

  @JsonKey(defaultValue: {
    'root': ['child']
  })
  Map<String, List<String>> fieldMapListString;

  DefaultValue();

  factory DefaultValue.fromJson(Map<String, dynamic> json) =>
      _$DefaultValueFromJson(json);
}

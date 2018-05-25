// Copyright (c) 2017, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:async';
import 'dart:convert';

import 'package:analyzer/dart/constant/value.dart';
import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:build/build.dart';
import 'package:path/path.dart' as p;
import 'package:source_gen/source_gen.dart';

import 'package:json_annotation/json_annotation.dart';

import 'utils.dart';

class JsonLiteralGenerator extends GeneratorForAnnotation<JsonLiteral> {
  const JsonLiteralGenerator();

  @override
  Future<String> generateForAnnotatedElement(
      Element element, ConstantReader annotation, BuildStep buildStep) async {
    if (p.isAbsolute(annotation.read('path').stringValue)) {
      throw new ArgumentError(
          '`annotation.path` must be relative path to the source file.');
    }

    var sourcePathDir = p.dirname(buildStep.inputId.path);
    var fileId = new AssetId(buildStep.inputId.package,
        p.join(sourcePathDir, annotation.read('path').stringValue));
    var content = json.decode(await buildStep.readAsString(fileId));

    var asConst = annotation.read('asConst').boolValue;

    var thing = jsonLiteralAsDart(content, asConst, false).toString();
    var marked = asConst ? 'const' : 'final';

    return '$marked _\$${element.name}JsonLiteral = $thing;';
  }
}

/// Returns a [String] representing a valid Dart literal for [value].
///
/// If [asConst] is `true`, the returned [String] is encoded as a `const`
/// literal.
String jsonLiteralAsDart(dynamic value, bool asConst, bool allowEnums) {
  if (value == null) return 'null';

  if (value is String) return escapeDartString(value);

  if (value is bool || value is num) return value.toString();

  if (value is List) {
    var listItems =
        value.map((v) => jsonLiteralAsDart(v, asConst, allowEnums)).join(', ');
    return '${asConst ? 'const' : ''}[$listItems]';
  }

  if (value is Map<String, dynamic>) return jsonMapAsDart(value, asConst);

  if (value is DartObject) {
    if (isEnum(value.type)) {
      var interfaceType = value.type as InterfaceType;

      var allowedValues = interfaceType.accessors
          .where((p) => p.returnType == interfaceType)
          .map((p) => p.name)
          .toList();

      var enumValueIndex = value.getField('index').toIntValue();
      return '${interfaceType.name}.${allowedValues[enumValueIndex]}';
    }
  }

  throw new StateError(
      'Should never get here – with ${value.runtimeType} - `$value`.');
}

String jsonMapAsDart(Map<String, dynamic> value, bool asConst) {
  var buffer = new StringBuffer();
  if (asConst) {
    buffer.write('const ');
  }
  buffer.write('{');

  var first = true;
  value.forEach((k, v) {
    if (first) {
      first = false;
    } else {
      buffer.writeln(',');
    }
    buffer.write(escapeDartString(k));
    buffer.write(': ');
    buffer.write(jsonLiteralAsDart(v, asConst, false));
  });

  buffer.write('}');

  return buffer.toString();
}

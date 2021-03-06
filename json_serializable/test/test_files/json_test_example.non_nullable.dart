// Copyright (c) 2018, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Generator: _NonNullableGenerator
// **************************************************************************

// ignore_for_file: annotate_overrides, hash_and_equals
import 'dart:collection';

import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

part 'json_test_example.non_nullable.g.dart';

enum House { gryffindor, hufflepuff, ravenclaw, slytherin }

@JsonSerializable(nullable: false)
class Person extends Object with _$PersonSerializerMixin {
  final String firstName, middleName, lastName;
  final DateTime dateOfBirth;
  @JsonKey(name: '\$house')
  final House house;

  Order order;

  Map<String, House> houseMap;

  Person(this.firstName, this.lastName, this.house,
      {this.middleName, this.dateOfBirth});

  factory Person.fromJson(Map<String, dynamic> json) => _$PersonFromJson(json);

  bool operator ==(Object other) =>
      other is Person &&
      firstName == other.firstName &&
      middleName == other.middleName &&
      lastName == other.lastName &&
      dateOfBirth == other.dateOfBirth &&
      house == other.house &&
      const MapEquality().equals(houseMap, other.houseMap);
}

enum Category { top, bottom, strange, charmed, up, down }

@JsonSerializable(nullable: false)
class Order extends Object with _$OrderSerializerMixin {
  int count;
  bool isRushed;

  @JsonKey(nullable: false)
  final Category category;
  final UnmodifiableListView<Item> items;
  Platform platform;
  Map<String, Platform> altPlatforms;

  @JsonKey(ignore: true)
  String get platformValue => platform?.description;

  set platformValue(String value) {
    throw new UnimplementedError('not impld');
  }

  // Ignored getter without value set in ctor
  int get price => items.fold(0, (total, item) => item.price + total);

  @JsonKey(ignore: true)
  bool shouldBeCached;

  Order(this.category, [Iterable<Item> items])
      : this.items = new UnmodifiableListView<Item>(
            new List<Item>.unmodifiable(items ?? const <Item>[]));

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);

  bool operator ==(Object other) =>
      other is Order &&
      count == other.count &&
      isRushed == other.isRushed &&
      _deepEquals(items, other.items) &&
      _deepEquals(altPlatforms, other.altPlatforms);
}

@JsonSerializable(nullable: false)
class Item extends ItemCore with _$ItemSerializerMixin {
  @JsonKey(includeIfNull: false, name: 'item-number')
  int itemNumber;
  List<DateTime> saleDates;
  List<int> rates;

  Item([int price]) : super(price);

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);

  bool operator ==(Object other) =>
      other is Item &&
      price == other.price &&
      itemNumber == other.itemNumber &&
      _deepEquals(saleDates, other.saleDates);
}

abstract class ItemCore {
  final int price;

  ItemCore(this.price);
}

bool _deepEquals(a, b) => const DeepCollectionEquality().equals(a, b);

class Platform {
  final String description;

  static const Platform foo = const Platform._('foo');
  static const Platform undefined = const Platform._('undefined');
  const Platform._(this.description);

  factory Platform.fromJson(String value) {
    switch (value) {
      case 'foo':
        return foo;
      case 'undefined':
        return undefined;
      default:
        throw new ArgumentError.value(value, 'value', 'Not a supported value.');
    }
  }

  String toJson() => description;
}

@JsonSerializable(nullable: false)
class Numbers extends Object with _$NumbersSerializerMixin {
  List<int> ints;
  List<num> nums;
  List<double> doubles;

  @JsonKey(nullable: false)
  List<double> nnDoubles;

  @JsonKey(fromJson: _fromJson, toJson: _toJson)
  Duration duration;

  @JsonKey(fromJson: _dateTimeFromEpochUs, toJson: _dateTimeToEpochUs)
  DateTime date;

  Numbers();

  factory Numbers.fromJson(Map<String, dynamic> json) =>
      _$NumbersFromJson(json);

  bool operator ==(Object other) =>
      other is Numbers &&
      _deepEquals(ints, other.ints) &&
      _deepEquals(nums, other.nums) &&
      _deepEquals(doubles, other.doubles) &&
      _deepEquals(nnDoubles, other.nnDoubles) &&
      _deepEquals(duration, other.duration) &&
      _deepEquals(date, other.date);
}

Duration _fromJson(int ms) => new Duration(milliseconds: ms);
int _toJson(Duration duration) => duration.inMilliseconds;

DateTime _dateTimeFromEpochUs(int us) =>
    new DateTime.fromMicrosecondsSinceEpoch(us);
int _dateTimeToEpochUs(DateTime dateTime) => dateTime.microsecondsSinceEpoch;

// GENERATED CODE - DO NOT MODIFY BY HAND

part of json_serializable.test.example;

// **************************************************************************
// Generator: JsonSerializableGenerator
// **************************************************************************

Person _$PersonFromJson(Map<String, dynamic> json) => new Person(
    json['firstName'] as String,
    json['lastName'] as String,
    json[r'$house'] == null
        ? null
        : House.values
            .singleWhere((x) => x.toString() == "House.${json[r'$house']}"),
    middleName: json['middleName'] as String,
    dateOfBirth: json['dateOfBirth'] == null
        ? null
        : DateTime.parse(json['dateOfBirth'] as String));

abstract class _$PersonSerializerMixin implements JsonWriteMySelf {
  String get firstName;
  String get middleName;
  String get lastName;
  DateTime get dateOfBirth;
  House get house;
  Map<String, dynamic> toJson() => <String, dynamic>{
        'firstName': firstName,
        'middleName': middleName,
        'lastName': lastName,
        'dateOfBirth': dateOfBirth?.toIso8601String(),
        r'$house': house == null ? null : house.toString().split('.')[1]
      };

  @override
  bool writeJson(JsonWriter writer) {
    if (writer.isPretty) {
      writer.writeString('{\n');

      writer.increaseIndent();

      writer.writeIndentation();
      writer.writeString('"');
      writer.writeStringContent('firstName');
      writer.writeString('": ');
      writer.writeObject(firstName);

      writer.writeString(',\n');
      writer.writeIndentation();
      writer.writeString('"');
      writer.writeStringContent('middleName');
      writer.writeString('": ');
      writer.writeObject(middleName);

      writer.writeString(',\n');
      writer.writeIndentation();
      writer.writeString('"');
      writer.writeStringContent('lastName');
      writer.writeString('": ');
      writer.writeObject(lastName);

      writer.writeString(',\n');
      writer.writeIndentation();
      writer.writeString('"');
      writer.writeStringContent('dateOfBirth');
      writer.writeString('": ');
      writer.writeObject(dateOfBirth?.toIso8601String());

      writer.writeString(',\n');
      writer.writeIndentation();
      writer.writeString('"');
      writer.writeStringContent(r'$house');
      writer.writeString('": ');
      writer.writeObject(house == null ? null : house.toString().split('.')[1]);

      writer.writeString('\n');

      writer.decreaseIndent();

      writer.writeIndentation();
    } else {
      writer.writeString('{');
      writer.writeStringContent('firstName');
      writer.writeString('":');
      writer.writeObject(firstName);
      writer.writeString(',"');
      writer.writeStringContent('middleName');
      writer.writeString('":');
      writer.writeObject(middleName);
      writer.writeString(',"');
      writer.writeStringContent('lastName');
      writer.writeString('":');
      writer.writeObject(lastName);
      writer.writeString(',"');
      writer.writeStringContent('dateOfBirth');
      writer.writeString('":');
      writer.writeObject(dateOfBirth?.toIso8601String());
      writer.writeString(',"');
      writer.writeStringContent(r'$house');
      writer.writeString('":');
      writer.writeObject(house == null ? null : house.toString().split('.')[1]);
    }
    writer.writeString('}');

    return true;
  }
}

Order _$OrderFromJson(Map<String, dynamic> json) => new Order(
    Category.values
        .singleWhere((x) => x.toString() == "Category.${json['category']}"),
    (json['items'] as List)?.map(
        (e) => e == null ? null : new Item.fromJson(e as Map<String, dynamic>)))
  ..count = json['count'] as int
  ..isRushed = json['isRushed'] as bool
  ..platform = json['platform'] == null
      ? null
      : new Platform.fromJson(json['platform'] as String)
  ..altPlatforms = json['altPlatforms'] == null
      ? null
      : new Map<String, Platform>.fromIterables(
          (json['altPlatforms'] as Map<String, dynamic>).keys,
          (json['altPlatforms'] as Map).values.map(
              (e) => e == null ? null : new Platform.fromJson(e as String)));

abstract class _$OrderSerializerMixin implements JsonWriteMySelf {
  int get count;
  bool get isRushed;
  Category get category;
  UnmodifiableListView<Item> get items;
  Platform get platform;
  Map<String, Platform> get altPlatforms;
  Map<String, dynamic> toJson() => <String, dynamic>{
        'count': count,
        'isRushed': isRushed,
        'category': category.toString().split('.')[1],
        'items': items,
        'platform': platform,
        'altPlatforms': altPlatforms
      };

  @override
  bool writeJson(JsonWriter writer) {
    if (writer.isPretty) {
      writer.writeString('{\n');

      writer.increaseIndent();

      writer.writeIndentation();
      writer.writeString('"');
      writer.writeStringContent('count');
      writer.writeString('": ');
      writer.writeObject(count);

      writer.writeString(',\n');
      writer.writeIndentation();
      writer.writeString('"');
      writer.writeStringContent('isRushed');
      writer.writeString('": ');
      writer.writeObject(isRushed);

      writer.writeString(',\n');
      writer.writeIndentation();
      writer.writeString('"');
      writer.writeStringContent('category');
      writer.writeString('": ');
      writer.writeObject(category.toString().split('.')[1]);

      writer.writeString(',\n');
      writer.writeIndentation();
      writer.writeString('"');
      writer.writeStringContent('items');
      writer.writeString('": ');
      writer.writeObject(items);

      writer.writeString(',\n');
      writer.writeIndentation();
      writer.writeString('"');
      writer.writeStringContent('platform');
      writer.writeString('": ');
      writer.writeObject(platform);

      writer.writeString(',\n');
      writer.writeIndentation();
      writer.writeString('"');
      writer.writeStringContent('altPlatforms');
      writer.writeString('": ');
      writer.writeObject(altPlatforms);

      writer.writeString('\n');

      writer.decreaseIndent();

      writer.writeIndentation();
    } else {
      writer.writeString('{');
      writer.writeStringContent('count');
      writer.writeString('":');
      writer.writeObject(count);
      writer.writeString(',"');
      writer.writeStringContent('isRushed');
      writer.writeString('":');
      writer.writeObject(isRushed);
      writer.writeString(',"');
      writer.writeStringContent('category');
      writer.writeString('":');
      writer.writeObject(category.toString().split('.')[1]);
      writer.writeString(',"');
      writer.writeStringContent('items');
      writer.writeString('":');
      writer.writeObject(items);
      writer.writeString(',"');
      writer.writeStringContent('platform');
      writer.writeString('":');
      writer.writeObject(platform);
      writer.writeString(',"');
      writer.writeStringContent('altPlatforms');
      writer.writeString('":');
      writer.writeObject(altPlatforms);
    }
    writer.writeString('}');

    return true;
  }
}

Item _$ItemFromJson(Map<String, dynamic> json) => new Item(json['price'] as int)
  ..itemNumber = json['item-number'] as int
  ..saleDates = (json['saleDates'] as List)
      ?.map((e) => e == null ? null : DateTime.parse(e as String))
      ?.toList()
  ..rates = (json['rates'] as List)?.map((e) => e as int)?.toList();

abstract class _$ItemSerializerMixin implements JsonWriteMySelf {
  int get price;
  int get itemNumber;
  List<DateTime> get saleDates;
  List<int> get rates;
  Map<String, dynamic> toJson() {
    var val = <String, dynamic>{
      'price': price,
    };

    void writeNotNull(String key, dynamic value) {
      if (value != null) {
        val[key] = value;
      }
    }

    writeNotNull('item-number', itemNumber);
    val['saleDates'] = saleDates?.map((e) => e?.toIso8601String())?.toList();
    val['rates'] = rates;
    return val;
  }

  @override
  bool writeJson(JsonWriter writer) {
    if (writer.isPretty) {
      writer.writeString('{\n');

      writer.increaseIndent();

      writer.writeIndentation();
      writer.writeString('"');
      writer.writeStringContent('price');
      writer.writeString('": ');
      writer.writeObject(price);

      if (itemNumber != null) {
        writer.writeString(',\n');
        writer.writeIndentation();
        writer.writeString('"');
        writer.writeStringContent('item-number');
        writer.writeString('": ');
        writer.writeObject(itemNumber);
      }
      writer.writeString(',\n');
      writer.writeIndentation();
      writer.writeString('"');
      writer.writeStringContent('saleDates');
      writer.writeString('": ');
      writer.writeObject(saleDates?.map((e) => e?.toIso8601String())?.toList());

      writer.writeString(',\n');
      writer.writeIndentation();
      writer.writeString('"');
      writer.writeStringContent('rates');
      writer.writeString('": ');
      writer.writeObject(rates);

      writer.writeString('\n');

      writer.decreaseIndent();

      writer.writeIndentation();
    } else {
      writer.writeString('{');
      writer.writeStringContent('price');
      writer.writeString('":');
      writer.writeObject(price);
      if (itemNumber != null) {
        writer.writeString(',"');
        writer.writeStringContent('item-number');
        writer.writeString('":');
        writer.writeObject(itemNumber);
      }
      writer.writeString(',"');
      writer.writeStringContent('saleDates');
      writer.writeString('":');
      writer.writeObject(saleDates?.map((e) => e?.toIso8601String())?.toList());
      writer.writeString(',"');
      writer.writeStringContent('rates');
      writer.writeString('":');
      writer.writeObject(rates);
    }
    writer.writeString('}');

    return true;
  }
}

Numbers _$NumbersFromJson(Map<String, dynamic> json) => new Numbers()
  ..ints = (json['ints'] as List)?.map((e) => e as int)?.toList()
  ..nums = (json['nums'] as List)?.map((e) => e as num)?.toList()
  ..doubles =
      (json['doubles'] as List)?.map((e) => (e as num)?.toDouble())?.toList()
  ..nnDoubles =
      (json['nnDoubles'] as List).map((e) => (e as num).toDouble()).toList();

abstract class _$NumbersSerializerMixin implements JsonWriteMySelf {
  List<int> get ints;
  List<num> get nums;
  List<double> get doubles;
  List<double> get nnDoubles;
  Map<String, dynamic> toJson() => <String, dynamic>{
        'ints': ints,
        'nums': nums,
        'doubles': doubles,
        'nnDoubles': nnDoubles
      };

  @override
  bool writeJson(JsonWriter writer) {
    if (writer.isPretty) {
      writer.writeString('{\n');

      writer.increaseIndent();

      writer.writeIndentation();
      writer.writeString('"');
      writer.writeStringContent('ints');
      writer.writeString('": ');
      writer.writeObject(ints);

      writer.writeString(',\n');
      writer.writeIndentation();
      writer.writeString('"');
      writer.writeStringContent('nums');
      writer.writeString('": ');
      writer.writeObject(nums);

      writer.writeString(',\n');
      writer.writeIndentation();
      writer.writeString('"');
      writer.writeStringContent('doubles');
      writer.writeString('": ');
      writer.writeObject(doubles);

      writer.writeString(',\n');
      writer.writeIndentation();
      writer.writeString('"');
      writer.writeStringContent('nnDoubles');
      writer.writeString('": ');
      writer.writeObject(nnDoubles);

      writer.writeString('\n');

      writer.decreaseIndent();

      writer.writeIndentation();
    } else {
      writer.writeString('{');
      writer.writeStringContent('ints');
      writer.writeString('":');
      writer.writeObject(ints);
      writer.writeString(',"');
      writer.writeStringContent('nums');
      writer.writeString('":');
      writer.writeObject(nums);
      writer.writeString(',"');
      writer.writeStringContent('doubles');
      writer.writeString('":');
      writer.writeObject(doubles);
      writer.writeString(',"');
      writer.writeStringContent('nnDoubles');
      writer.writeString('":');
      writer.writeObject(nnDoubles);
    }
    writer.writeString('}');

    return true;
  }
}

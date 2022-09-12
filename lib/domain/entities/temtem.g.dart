// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'temtem.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, unused_local_variable

extension GetTemtemCollection on Isar {
  IsarCollection<Temtem> get temtems => getCollection();
}

const TemtemSchema = CollectionSchema(
  name: 'Temtem',
  schema:
      '{"name":"Temtem","idName":"number","properties":[{"name":"hashCode","type":"Long"},{"name":"name","type":"String"},{"name":"stringify","type":"Bool"}],"indexes":[],"links":[]}',
  idName: 'number',
  propertyIds: {'hashCode': 0, 'name': 1, 'stringify': 2},
  listProperties: {},
  indexIds: {},
  indexValueTypes: {},
  linkIds: {},
  backlinkLinkNames: {},
  getId: _temtemGetId,
  getLinks: _temtemGetLinks,
  attachLinks: _temtemAttachLinks,
  serializeNative: _temtemSerializeNative,
  deserializeNative: _temtemDeserializeNative,
  deserializePropNative: _temtemDeserializePropNative,
  serializeWeb: _temtemSerializeWeb,
  deserializeWeb: _temtemDeserializeWeb,
  deserializePropWeb: _temtemDeserializePropWeb,
  version: 3,
);

int? _temtemGetId(Temtem object) {
  if (object.number == Isar.autoIncrement) {
    return null;
  } else {
    return object.number;
  }
}

List<IsarLinkBase> _temtemGetLinks(Temtem object) {
  return [];
}

void _temtemSerializeNative(
    IsarCollection<Temtem> collection,
    IsarRawObject rawObj,
    Temtem object,
    int staticSize,
    List<int> offsets,
    AdapterAlloc alloc) {
  var dynamicSize = 0;
  final value0 = object.hashCode;
  final _hashCode = value0;
  final value1 = object.name;
  final _name = IsarBinaryWriter.utf8Encoder.convert(value1);
  dynamicSize += (_name.length) as int;
  final value2 = object.stringify;
  final _stringify = value2;
  final size = staticSize + dynamicSize;

  rawObj.buffer = alloc(size);
  rawObj.buffer_length = size;
  final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
  final writer = IsarBinaryWriter(buffer, staticSize);
  writer.writeLong(offsets[0], _hashCode);
  writer.writeBytes(offsets[1], _name);
  writer.writeBool(offsets[2], _stringify);
}

Temtem _temtemDeserializeNative(IsarCollection<Temtem> collection, int id,
    IsarBinaryReader reader, List<int> offsets) {
  final object = Temtem(
    name: reader.readString(offsets[1]),
    number: id,
  );
  return object;
}

P _temtemDeserializePropNative<P>(
    int id, IsarBinaryReader reader, int propertyIndex, int offset) {
  switch (propertyIndex) {
    case -1:
      return id as P;
    case 0:
      return (reader.readLong(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readBoolOrNull(offset)) as P;
    default:
      throw 'Illegal propertyIndex';
  }
}

dynamic _temtemSerializeWeb(IsarCollection<Temtem> collection, Temtem object) {
  final jsObj = IsarNative.newJsObject();
  IsarNative.jsObjectSet(jsObj, 'hashCode', object.hashCode);
  IsarNative.jsObjectSet(jsObj, 'name', object.name);
  IsarNative.jsObjectSet(jsObj, 'number', object.number);
  IsarNative.jsObjectSet(jsObj, 'stringify', object.stringify);
  return jsObj;
}

Temtem _temtemDeserializeWeb(IsarCollection<Temtem> collection, dynamic jsObj) {
  final object = Temtem(
    name: IsarNative.jsObjectGet(jsObj, 'name') ?? '',
    number: IsarNative.jsObjectGet(jsObj, 'number') ?? double.negativeInfinity,
  );
  return object;
}

P _temtemDeserializePropWeb<P>(Object jsObj, String propertyName) {
  switch (propertyName) {
    case 'hashCode':
      return (IsarNative.jsObjectGet(jsObj, 'hashCode') ??
          double.negativeInfinity) as P;
    case 'name':
      return (IsarNative.jsObjectGet(jsObj, 'name') ?? '') as P;
    case 'number':
      return (IsarNative.jsObjectGet(jsObj, 'number') ??
          double.negativeInfinity) as P;
    case 'stringify':
      return (IsarNative.jsObjectGet(jsObj, 'stringify')) as P;
    default:
      throw 'Illegal propertyName';
  }
}

void _temtemAttachLinks(IsarCollection col, int id, Temtem object) {}

extension TemtemQueryWhereSort on QueryBuilder<Temtem, Temtem, QWhere> {
  QueryBuilder<Temtem, Temtem, QAfterWhere> anyNumber() {
    return addWhereClauseInternal(const IdWhereClause.any());
  }
}

extension TemtemQueryWhere on QueryBuilder<Temtem, Temtem, QWhereClause> {
  QueryBuilder<Temtem, Temtem, QAfterWhereClause> numberEqualTo(int number) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: number,
      includeLower: true,
      upper: number,
      includeUpper: true,
    ));
  }

  QueryBuilder<Temtem, Temtem, QAfterWhereClause> numberNotEqualTo(int number) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(
        IdWhereClause.lessThan(upper: number, includeUpper: false),
      ).addWhereClauseInternal(
        IdWhereClause.greaterThan(lower: number, includeLower: false),
      );
    } else {
      return addWhereClauseInternal(
        IdWhereClause.greaterThan(lower: number, includeLower: false),
      ).addWhereClauseInternal(
        IdWhereClause.lessThan(upper: number, includeUpper: false),
      );
    }
  }

  QueryBuilder<Temtem, Temtem, QAfterWhereClause> numberGreaterThan(int number,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.greaterThan(lower: number, includeLower: include),
    );
  }

  QueryBuilder<Temtem, Temtem, QAfterWhereClause> numberLessThan(int number,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.lessThan(upper: number, includeUpper: include),
    );
  }

  QueryBuilder<Temtem, Temtem, QAfterWhereClause> numberBetween(
    int lowerNumber,
    int upperNumber, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: lowerNumber,
      includeLower: includeLower,
      upper: upperNumber,
      includeUpper: includeUpper,
    ));
  }
}

extension TemtemQueryFilter on QueryBuilder<Temtem, Temtem, QFilterCondition> {
  QueryBuilder<Temtem, Temtem, QAfterFilterCondition> hashCodeEqualTo(
      int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'hashCode',
      value: value,
    ));
  }

  QueryBuilder<Temtem, Temtem, QAfterFilterCondition> hashCodeGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'hashCode',
      value: value,
    ));
  }

  QueryBuilder<Temtem, Temtem, QAfterFilterCondition> hashCodeLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'hashCode',
      value: value,
    ));
  }

  QueryBuilder<Temtem, Temtem, QAfterFilterCondition> hashCodeBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'hashCode',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<Temtem, Temtem, QAfterFilterCondition> nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Temtem, Temtem, QAfterFilterCondition> nameGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Temtem, Temtem, QAfterFilterCondition> nameLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Temtem, Temtem, QAfterFilterCondition> nameBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'name',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Temtem, Temtem, QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Temtem, Temtem, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Temtem, Temtem, QAfterFilterCondition> nameContains(String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Temtem, Temtem, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'name',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Temtem, Temtem, QAfterFilterCondition> numberEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'number',
      value: value,
    ));
  }

  QueryBuilder<Temtem, Temtem, QAfterFilterCondition> numberGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'number',
      value: value,
    ));
  }

  QueryBuilder<Temtem, Temtem, QAfterFilterCondition> numberLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'number',
      value: value,
    ));
  }

  QueryBuilder<Temtem, Temtem, QAfterFilterCondition> numberBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'number',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<Temtem, Temtem, QAfterFilterCondition> stringifyIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'stringify',
      value: null,
    ));
  }

  QueryBuilder<Temtem, Temtem, QAfterFilterCondition> stringifyEqualTo(
      bool? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'stringify',
      value: value,
    ));
  }
}

extension TemtemQueryLinks on QueryBuilder<Temtem, Temtem, QFilterCondition> {}

extension TemtemQueryWhereSortBy on QueryBuilder<Temtem, Temtem, QSortBy> {
  QueryBuilder<Temtem, Temtem, QAfterSortBy> sortByHashCode() {
    return addSortByInternal('hashCode', Sort.asc);
  }

  QueryBuilder<Temtem, Temtem, QAfterSortBy> sortByHashCodeDesc() {
    return addSortByInternal('hashCode', Sort.desc);
  }

  QueryBuilder<Temtem, Temtem, QAfterSortBy> sortByName() {
    return addSortByInternal('name', Sort.asc);
  }

  QueryBuilder<Temtem, Temtem, QAfterSortBy> sortByNameDesc() {
    return addSortByInternal('name', Sort.desc);
  }

  QueryBuilder<Temtem, Temtem, QAfterSortBy> sortByNumber() {
    return addSortByInternal('number', Sort.asc);
  }

  QueryBuilder<Temtem, Temtem, QAfterSortBy> sortByNumberDesc() {
    return addSortByInternal('number', Sort.desc);
  }

  QueryBuilder<Temtem, Temtem, QAfterSortBy> sortByStringify() {
    return addSortByInternal('stringify', Sort.asc);
  }

  QueryBuilder<Temtem, Temtem, QAfterSortBy> sortByStringifyDesc() {
    return addSortByInternal('stringify', Sort.desc);
  }
}

extension TemtemQueryWhereSortThenBy
    on QueryBuilder<Temtem, Temtem, QSortThenBy> {
  QueryBuilder<Temtem, Temtem, QAfterSortBy> thenByHashCode() {
    return addSortByInternal('hashCode', Sort.asc);
  }

  QueryBuilder<Temtem, Temtem, QAfterSortBy> thenByHashCodeDesc() {
    return addSortByInternal('hashCode', Sort.desc);
  }

  QueryBuilder<Temtem, Temtem, QAfterSortBy> thenByName() {
    return addSortByInternal('name', Sort.asc);
  }

  QueryBuilder<Temtem, Temtem, QAfterSortBy> thenByNameDesc() {
    return addSortByInternal('name', Sort.desc);
  }

  QueryBuilder<Temtem, Temtem, QAfterSortBy> thenByNumber() {
    return addSortByInternal('number', Sort.asc);
  }

  QueryBuilder<Temtem, Temtem, QAfterSortBy> thenByNumberDesc() {
    return addSortByInternal('number', Sort.desc);
  }

  QueryBuilder<Temtem, Temtem, QAfterSortBy> thenByStringify() {
    return addSortByInternal('stringify', Sort.asc);
  }

  QueryBuilder<Temtem, Temtem, QAfterSortBy> thenByStringifyDesc() {
    return addSortByInternal('stringify', Sort.desc);
  }
}

extension TemtemQueryWhereDistinct on QueryBuilder<Temtem, Temtem, QDistinct> {
  QueryBuilder<Temtem, Temtem, QDistinct> distinctByHashCode() {
    return addDistinctByInternal('hashCode');
  }

  QueryBuilder<Temtem, Temtem, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('name', caseSensitive: caseSensitive);
  }

  QueryBuilder<Temtem, Temtem, QDistinct> distinctByNumber() {
    return addDistinctByInternal('number');
  }

  QueryBuilder<Temtem, Temtem, QDistinct> distinctByStringify() {
    return addDistinctByInternal('stringify');
  }
}

extension TemtemQueryProperty on QueryBuilder<Temtem, Temtem, QQueryProperty> {
  QueryBuilder<Temtem, int, QQueryOperations> hashCodeProperty() {
    return addPropertyNameInternal('hashCode');
  }

  QueryBuilder<Temtem, String, QQueryOperations> nameProperty() {
    return addPropertyNameInternal('name');
  }

  QueryBuilder<Temtem, int, QQueryOperations> numberProperty() {
    return addPropertyNameInternal('number');
  }

  QueryBuilder<Temtem, bool?, QQueryOperations> stringifyProperty() {
    return addPropertyNameInternal('stringify');
  }
}

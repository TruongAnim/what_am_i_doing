// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_time.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetJobTimeCollection on Isar {
  IsarCollection<JobTime> get jobTimes => this.collection();
}

const JobTimeSchema = CollectionSchema(
  name: r'JobTime',
  id: -2116467047576221172,
  properties: {
    r'timeQ1': PropertySchema(
      id: 0,
      name: r'timeQ1',
      type: IsarType.long,
    ),
    r'timeQ2': PropertySchema(
      id: 1,
      name: r'timeQ2',
      type: IsarType.long,
    ),
    r'timeQ3': PropertySchema(
      id: 2,
      name: r'timeQ3',
      type: IsarType.long,
    ),
    r'timeQ4': PropertySchema(
      id: 3,
      name: r'timeQ4',
      type: IsarType.long,
    ),
    r'timestamp': PropertySchema(
      id: 4,
      name: r'timestamp',
      type: IsarType.dateTime,
    )
  },
  estimateSize: _jobTimeEstimateSize,
  serialize: _jobTimeSerialize,
  deserialize: _jobTimeDeserialize,
  deserializeProp: _jobTimeDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _jobTimeGetId,
  getLinks: _jobTimeGetLinks,
  attach: _jobTimeAttach,
  version: '3.1.0',
);

int _jobTimeEstimateSize(
  JobTime object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _jobTimeSerialize(
  JobTime object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.timeQ1);
  writer.writeLong(offsets[1], object.timeQ2);
  writer.writeLong(offsets[2], object.timeQ3);
  writer.writeLong(offsets[3], object.timeQ4);
  writer.writeDateTime(offsets[4], object.timestamp);
}

JobTime _jobTimeDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = JobTime();
  object.id = id;
  object.timeQ1 = reader.readLong(offsets[0]);
  object.timeQ2 = reader.readLong(offsets[1]);
  object.timeQ3 = reader.readLong(offsets[2]);
  object.timeQ4 = reader.readLong(offsets[3]);
  object.timestamp = reader.readDateTime(offsets[4]);
  return object;
}

P _jobTimeDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLong(offset)) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    case 2:
      return (reader.readLong(offset)) as P;
    case 3:
      return (reader.readLong(offset)) as P;
    case 4:
      return (reader.readDateTime(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _jobTimeGetId(JobTime object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _jobTimeGetLinks(JobTime object) {
  return [];
}

void _jobTimeAttach(IsarCollection<dynamic> col, Id id, JobTime object) {
  object.id = id;
}

extension JobTimeQueryWhereSort on QueryBuilder<JobTime, JobTime, QWhere> {
  QueryBuilder<JobTime, JobTime, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension JobTimeQueryWhere on QueryBuilder<JobTime, JobTime, QWhereClause> {
  QueryBuilder<JobTime, JobTime, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<JobTime, JobTime, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<JobTime, JobTime, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<JobTime, JobTime, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<JobTime, JobTime, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension JobTimeQueryFilter
    on QueryBuilder<JobTime, JobTime, QFilterCondition> {
  QueryBuilder<JobTime, JobTime, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<JobTime, JobTime, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<JobTime, JobTime, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<JobTime, JobTime, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<JobTime, JobTime, QAfterFilterCondition> timeQ1EqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'timeQ1',
        value: value,
      ));
    });
  }

  QueryBuilder<JobTime, JobTime, QAfterFilterCondition> timeQ1GreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'timeQ1',
        value: value,
      ));
    });
  }

  QueryBuilder<JobTime, JobTime, QAfterFilterCondition> timeQ1LessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'timeQ1',
        value: value,
      ));
    });
  }

  QueryBuilder<JobTime, JobTime, QAfterFilterCondition> timeQ1Between(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'timeQ1',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<JobTime, JobTime, QAfterFilterCondition> timeQ2EqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'timeQ2',
        value: value,
      ));
    });
  }

  QueryBuilder<JobTime, JobTime, QAfterFilterCondition> timeQ2GreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'timeQ2',
        value: value,
      ));
    });
  }

  QueryBuilder<JobTime, JobTime, QAfterFilterCondition> timeQ2LessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'timeQ2',
        value: value,
      ));
    });
  }

  QueryBuilder<JobTime, JobTime, QAfterFilterCondition> timeQ2Between(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'timeQ2',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<JobTime, JobTime, QAfterFilterCondition> timeQ3EqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'timeQ3',
        value: value,
      ));
    });
  }

  QueryBuilder<JobTime, JobTime, QAfterFilterCondition> timeQ3GreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'timeQ3',
        value: value,
      ));
    });
  }

  QueryBuilder<JobTime, JobTime, QAfterFilterCondition> timeQ3LessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'timeQ3',
        value: value,
      ));
    });
  }

  QueryBuilder<JobTime, JobTime, QAfterFilterCondition> timeQ3Between(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'timeQ3',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<JobTime, JobTime, QAfterFilterCondition> timeQ4EqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'timeQ4',
        value: value,
      ));
    });
  }

  QueryBuilder<JobTime, JobTime, QAfterFilterCondition> timeQ4GreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'timeQ4',
        value: value,
      ));
    });
  }

  QueryBuilder<JobTime, JobTime, QAfterFilterCondition> timeQ4LessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'timeQ4',
        value: value,
      ));
    });
  }

  QueryBuilder<JobTime, JobTime, QAfterFilterCondition> timeQ4Between(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'timeQ4',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<JobTime, JobTime, QAfterFilterCondition> timestampEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'timestamp',
        value: value,
      ));
    });
  }

  QueryBuilder<JobTime, JobTime, QAfterFilterCondition> timestampGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'timestamp',
        value: value,
      ));
    });
  }

  QueryBuilder<JobTime, JobTime, QAfterFilterCondition> timestampLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'timestamp',
        value: value,
      ));
    });
  }

  QueryBuilder<JobTime, JobTime, QAfterFilterCondition> timestampBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'timestamp',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension JobTimeQueryObject
    on QueryBuilder<JobTime, JobTime, QFilterCondition> {}

extension JobTimeQueryLinks
    on QueryBuilder<JobTime, JobTime, QFilterCondition> {}

extension JobTimeQuerySortBy on QueryBuilder<JobTime, JobTime, QSortBy> {
  QueryBuilder<JobTime, JobTime, QAfterSortBy> sortByTimeQ1() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timeQ1', Sort.asc);
    });
  }

  QueryBuilder<JobTime, JobTime, QAfterSortBy> sortByTimeQ1Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timeQ1', Sort.desc);
    });
  }

  QueryBuilder<JobTime, JobTime, QAfterSortBy> sortByTimeQ2() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timeQ2', Sort.asc);
    });
  }

  QueryBuilder<JobTime, JobTime, QAfterSortBy> sortByTimeQ2Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timeQ2', Sort.desc);
    });
  }

  QueryBuilder<JobTime, JobTime, QAfterSortBy> sortByTimeQ3() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timeQ3', Sort.asc);
    });
  }

  QueryBuilder<JobTime, JobTime, QAfterSortBy> sortByTimeQ3Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timeQ3', Sort.desc);
    });
  }

  QueryBuilder<JobTime, JobTime, QAfterSortBy> sortByTimeQ4() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timeQ4', Sort.asc);
    });
  }

  QueryBuilder<JobTime, JobTime, QAfterSortBy> sortByTimeQ4Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timeQ4', Sort.desc);
    });
  }

  QueryBuilder<JobTime, JobTime, QAfterSortBy> sortByTimestamp() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timestamp', Sort.asc);
    });
  }

  QueryBuilder<JobTime, JobTime, QAfterSortBy> sortByTimestampDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timestamp', Sort.desc);
    });
  }
}

extension JobTimeQuerySortThenBy
    on QueryBuilder<JobTime, JobTime, QSortThenBy> {
  QueryBuilder<JobTime, JobTime, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<JobTime, JobTime, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<JobTime, JobTime, QAfterSortBy> thenByTimeQ1() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timeQ1', Sort.asc);
    });
  }

  QueryBuilder<JobTime, JobTime, QAfterSortBy> thenByTimeQ1Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timeQ1', Sort.desc);
    });
  }

  QueryBuilder<JobTime, JobTime, QAfterSortBy> thenByTimeQ2() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timeQ2', Sort.asc);
    });
  }

  QueryBuilder<JobTime, JobTime, QAfterSortBy> thenByTimeQ2Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timeQ2', Sort.desc);
    });
  }

  QueryBuilder<JobTime, JobTime, QAfterSortBy> thenByTimeQ3() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timeQ3', Sort.asc);
    });
  }

  QueryBuilder<JobTime, JobTime, QAfterSortBy> thenByTimeQ3Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timeQ3', Sort.desc);
    });
  }

  QueryBuilder<JobTime, JobTime, QAfterSortBy> thenByTimeQ4() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timeQ4', Sort.asc);
    });
  }

  QueryBuilder<JobTime, JobTime, QAfterSortBy> thenByTimeQ4Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timeQ4', Sort.desc);
    });
  }

  QueryBuilder<JobTime, JobTime, QAfterSortBy> thenByTimestamp() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timestamp', Sort.asc);
    });
  }

  QueryBuilder<JobTime, JobTime, QAfterSortBy> thenByTimestampDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timestamp', Sort.desc);
    });
  }
}

extension JobTimeQueryWhereDistinct
    on QueryBuilder<JobTime, JobTime, QDistinct> {
  QueryBuilder<JobTime, JobTime, QDistinct> distinctByTimeQ1() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'timeQ1');
    });
  }

  QueryBuilder<JobTime, JobTime, QDistinct> distinctByTimeQ2() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'timeQ2');
    });
  }

  QueryBuilder<JobTime, JobTime, QDistinct> distinctByTimeQ3() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'timeQ3');
    });
  }

  QueryBuilder<JobTime, JobTime, QDistinct> distinctByTimeQ4() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'timeQ4');
    });
  }

  QueryBuilder<JobTime, JobTime, QDistinct> distinctByTimestamp() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'timestamp');
    });
  }
}

extension JobTimeQueryProperty
    on QueryBuilder<JobTime, JobTime, QQueryProperty> {
  QueryBuilder<JobTime, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<JobTime, int, QQueryOperations> timeQ1Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'timeQ1');
    });
  }

  QueryBuilder<JobTime, int, QQueryOperations> timeQ2Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'timeQ2');
    });
  }

  QueryBuilder<JobTime, int, QQueryOperations> timeQ3Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'timeQ3');
    });
  }

  QueryBuilder<JobTime, int, QQueryOperations> timeQ4Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'timeQ4');
    });
  }

  QueryBuilder<JobTime, DateTime, QQueryOperations> timestampProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'timestamp');
    });
  }
}

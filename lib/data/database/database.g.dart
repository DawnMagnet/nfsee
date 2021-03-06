// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class DumpedRecord extends DataClass implements Insertable<DumpedRecord> {
  final int id;
  final DateTime time;
  final String config;
  final String data;
  DumpedRecord(
      {@required this.id,
      @required this.time,
      @required this.config,
      @required this.data});
  factory DumpedRecord.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    final stringType = db.typeSystem.forDartType<String>();
    return DumpedRecord(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      time:
          dateTimeType.mapFromDatabaseResponse(data['${effectivePrefix}time']),
      config:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}config']),
      data: stringType.mapFromDatabaseResponse(data['${effectivePrefix}data']),
    );
  }
  factory DumpedRecord.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return DumpedRecord(
      id: serializer.fromJson<int>(json['id']),
      time: serializer.fromJson<DateTime>(json['time']),
      config: serializer.fromJson<String>(json['config']),
      data: serializer.fromJson<String>(json['data']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'time': serializer.toJson<DateTime>(time),
      'config': serializer.toJson<String>(config),
      'data': serializer.toJson<String>(data),
    };
  }

  @override
  DumpedRecordsCompanion createCompanion(bool nullToAbsent) {
    return DumpedRecordsCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      time: time == null && nullToAbsent ? const Value.absent() : Value(time),
      config:
          config == null && nullToAbsent ? const Value.absent() : Value(config),
      data: data == null && nullToAbsent ? const Value.absent() : Value(data),
    );
  }

  DumpedRecord copyWith({int id, DateTime time, String config, String data}) =>
      DumpedRecord(
        id: id ?? this.id,
        time: time ?? this.time,
        config: config ?? this.config,
        data: data ?? this.data,
      );
  @override
  String toString() {
    return (StringBuffer('DumpedRecord(')
          ..write('id: $id, ')
          ..write('time: $time, ')
          ..write('config: $config, ')
          ..write('data: $data')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(id.hashCode,
      $mrjc(time.hashCode, $mrjc(config.hashCode, data.hashCode))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is DumpedRecord &&
          other.id == this.id &&
          other.time == this.time &&
          other.config == this.config &&
          other.data == this.data);
}

class DumpedRecordsCompanion extends UpdateCompanion<DumpedRecord> {
  final Value<int> id;
  final Value<DateTime> time;
  final Value<String> config;
  final Value<String> data;
  const DumpedRecordsCompanion({
    this.id = const Value.absent(),
    this.time = const Value.absent(),
    this.config = const Value.absent(),
    this.data = const Value.absent(),
  });
  DumpedRecordsCompanion.insert({
    this.id = const Value.absent(),
    @required DateTime time,
    this.config = const Value.absent(),
    @required String data,
  })  : time = Value(time),
        data = Value(data);
  DumpedRecordsCompanion copyWith(
      {Value<int> id,
      Value<DateTime> time,
      Value<String> config,
      Value<String> data}) {
    return DumpedRecordsCompanion(
      id: id ?? this.id,
      time: time ?? this.time,
      config: config ?? this.config,
      data: data ?? this.data,
    );
  }
}

class $DumpedRecordsTable extends DumpedRecords
    with TableInfo<$DumpedRecordsTable, DumpedRecord> {
  final GeneratedDatabase _db;
  final String _alias;
  $DumpedRecordsTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _timeMeta = const VerificationMeta('time');
  GeneratedDateTimeColumn _time;
  @override
  GeneratedDateTimeColumn get time => _time ??= _constructTime();
  GeneratedDateTimeColumn _constructTime() {
    return GeneratedDateTimeColumn(
      'time',
      $tableName,
      false,
    );
  }

  final VerificationMeta _configMeta = const VerificationMeta('config');
  GeneratedTextColumn _config;
  @override
  GeneratedTextColumn get config => _config ??= _constructConfig();
  GeneratedTextColumn _constructConfig() {
    return GeneratedTextColumn('config', $tableName, false,
        defaultValue: const Constant(DEFAULT_CONFIG));
  }

  final VerificationMeta _dataMeta = const VerificationMeta('data');
  GeneratedTextColumn _data;
  @override
  GeneratedTextColumn get data => _data ??= _constructData();
  GeneratedTextColumn _constructData() {
    return GeneratedTextColumn(
      'data',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [id, time, config, data];
  @override
  $DumpedRecordsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'dumped_records';
  @override
  final String actualTableName = 'dumped_records';
  @override
  VerificationContext validateIntegrity(DumpedRecordsCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.id.present) {
      context.handle(_idMeta, id.isAcceptableValue(d.id.value, _idMeta));
    }
    if (d.time.present) {
      context.handle(
          _timeMeta, time.isAcceptableValue(d.time.value, _timeMeta));
    } else if (isInserting) {
      context.missing(_timeMeta);
    }
    if (d.config.present) {
      context.handle(
          _configMeta, config.isAcceptableValue(d.config.value, _configMeta));
    }
    if (d.data.present) {
      context.handle(
          _dataMeta, data.isAcceptableValue(d.data.value, _dataMeta));
    } else if (isInserting) {
      context.missing(_dataMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DumpedRecord map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return DumpedRecord.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(DumpedRecordsCompanion d) {
    final map = <String, Variable>{};
    if (d.id.present) {
      map['id'] = Variable<int, IntType>(d.id.value);
    }
    if (d.time.present) {
      map['time'] = Variable<DateTime, DateTimeType>(d.time.value);
    }
    if (d.config.present) {
      map['config'] = Variable<String, StringType>(d.config.value);
    }
    if (d.data.present) {
      map['data'] = Variable<String, StringType>(d.data.value);
    }
    return map;
  }

  @override
  $DumpedRecordsTable createAlias(String alias) {
    return $DumpedRecordsTable(_db, alias);
  }
}

class SavedScript extends DataClass implements Insertable<SavedScript> {
  final int id;
  final String name;
  final String source;
  final DateTime creationTime;
  final DateTime lastUsed;
  SavedScript(
      {@required this.id,
      @required this.name,
      @required this.source,
      @required this.creationTime,
      this.lastUsed});
  factory SavedScript.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return SavedScript(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      name: stringType.mapFromDatabaseResponse(data['${effectivePrefix}name']),
      source:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}source']),
      creationTime: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}creation_time']),
      lastUsed: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}last_used']),
    );
  }
  factory SavedScript.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return SavedScript(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      source: serializer.fromJson<String>(json['source']),
      creationTime: serializer.fromJson<DateTime>(json['creationTime']),
      lastUsed: serializer.fromJson<DateTime>(json['lastUsed']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'source': serializer.toJson<String>(source),
      'creationTime': serializer.toJson<DateTime>(creationTime),
      'lastUsed': serializer.toJson<DateTime>(lastUsed),
    };
  }

  @override
  SavedScriptsCompanion createCompanion(bool nullToAbsent) {
    return SavedScriptsCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      source:
          source == null && nullToAbsent ? const Value.absent() : Value(source),
      creationTime: creationTime == null && nullToAbsent
          ? const Value.absent()
          : Value(creationTime),
      lastUsed: lastUsed == null && nullToAbsent
          ? const Value.absent()
          : Value(lastUsed),
    );
  }

  SavedScript copyWith(
          {int id,
          String name,
          String source,
          DateTime creationTime,
          DateTime lastUsed}) =>
      SavedScript(
        id: id ?? this.id,
        name: name ?? this.name,
        source: source ?? this.source,
        creationTime: creationTime ?? this.creationTime,
        lastUsed: lastUsed ?? this.lastUsed,
      );
  @override
  String toString() {
    return (StringBuffer('SavedScript(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('source: $source, ')
          ..write('creationTime: $creationTime, ')
          ..write('lastUsed: $lastUsed')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          name.hashCode,
          $mrjc(source.hashCode,
              $mrjc(creationTime.hashCode, lastUsed.hashCode)))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is SavedScript &&
          other.id == this.id &&
          other.name == this.name &&
          other.source == this.source &&
          other.creationTime == this.creationTime &&
          other.lastUsed == this.lastUsed);
}

class SavedScriptsCompanion extends UpdateCompanion<SavedScript> {
  final Value<int> id;
  final Value<String> name;
  final Value<String> source;
  final Value<DateTime> creationTime;
  final Value<DateTime> lastUsed;
  const SavedScriptsCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.source = const Value.absent(),
    this.creationTime = const Value.absent(),
    this.lastUsed = const Value.absent(),
  });
  SavedScriptsCompanion.insert({
    this.id = const Value.absent(),
    @required String name,
    @required String source,
    @required DateTime creationTime,
    this.lastUsed = const Value.absent(),
  })  : name = Value(name),
        source = Value(source),
        creationTime = Value(creationTime);
  SavedScriptsCompanion copyWith(
      {Value<int> id,
      Value<String> name,
      Value<String> source,
      Value<DateTime> creationTime,
      Value<DateTime> lastUsed}) {
    return SavedScriptsCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      source: source ?? this.source,
      creationTime: creationTime ?? this.creationTime,
      lastUsed: lastUsed ?? this.lastUsed,
    );
  }
}

class $SavedScriptsTable extends SavedScripts
    with TableInfo<$SavedScriptsTable, SavedScript> {
  final GeneratedDatabase _db;
  final String _alias;
  $SavedScriptsTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _nameMeta = const VerificationMeta('name');
  GeneratedTextColumn _name;
  @override
  GeneratedTextColumn get name => _name ??= _constructName();
  GeneratedTextColumn _constructName() {
    return GeneratedTextColumn(
      'name',
      $tableName,
      false,
    );
  }

  final VerificationMeta _sourceMeta = const VerificationMeta('source');
  GeneratedTextColumn _source;
  @override
  GeneratedTextColumn get source => _source ??= _constructSource();
  GeneratedTextColumn _constructSource() {
    return GeneratedTextColumn(
      'source',
      $tableName,
      false,
    );
  }

  final VerificationMeta _creationTimeMeta =
      const VerificationMeta('creationTime');
  GeneratedDateTimeColumn _creationTime;
  @override
  GeneratedDateTimeColumn get creationTime =>
      _creationTime ??= _constructCreationTime();
  GeneratedDateTimeColumn _constructCreationTime() {
    return GeneratedDateTimeColumn(
      'creation_time',
      $tableName,
      false,
    );
  }

  final VerificationMeta _lastUsedMeta = const VerificationMeta('lastUsed');
  GeneratedDateTimeColumn _lastUsed;
  @override
  GeneratedDateTimeColumn get lastUsed => _lastUsed ??= _constructLastUsed();
  GeneratedDateTimeColumn _constructLastUsed() {
    return GeneratedDateTimeColumn(
      'last_used',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [id, name, source, creationTime, lastUsed];
  @override
  $SavedScriptsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'saved_scripts';
  @override
  final String actualTableName = 'saved_scripts';
  @override
  VerificationContext validateIntegrity(SavedScriptsCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.id.present) {
      context.handle(_idMeta, id.isAcceptableValue(d.id.value, _idMeta));
    }
    if (d.name.present) {
      context.handle(
          _nameMeta, name.isAcceptableValue(d.name.value, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (d.source.present) {
      context.handle(
          _sourceMeta, source.isAcceptableValue(d.source.value, _sourceMeta));
    } else if (isInserting) {
      context.missing(_sourceMeta);
    }
    if (d.creationTime.present) {
      context.handle(
          _creationTimeMeta,
          creationTime.isAcceptableValue(
              d.creationTime.value, _creationTimeMeta));
    } else if (isInserting) {
      context.missing(_creationTimeMeta);
    }
    if (d.lastUsed.present) {
      context.handle(_lastUsedMeta,
          lastUsed.isAcceptableValue(d.lastUsed.value, _lastUsedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SavedScript map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return SavedScript.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(SavedScriptsCompanion d) {
    final map = <String, Variable>{};
    if (d.id.present) {
      map['id'] = Variable<int, IntType>(d.id.value);
    }
    if (d.name.present) {
      map['name'] = Variable<String, StringType>(d.name.value);
    }
    if (d.source.present) {
      map['source'] = Variable<String, StringType>(d.source.value);
    }
    if (d.creationTime.present) {
      map['creation_time'] =
          Variable<DateTime, DateTimeType>(d.creationTime.value);
    }
    if (d.lastUsed.present) {
      map['last_used'] = Variable<DateTime, DateTimeType>(d.lastUsed.value);
    }
    return map;
  }

  @override
  $SavedScriptsTable createAlias(String alias) {
    return $SavedScriptsTable(_db, alias);
  }
}

abstract class _$Database extends GeneratedDatabase {
  _$Database(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $DumpedRecordsTable _dumpedRecords;
  $DumpedRecordsTable get dumpedRecords =>
      _dumpedRecords ??= $DumpedRecordsTable(this);
  $SavedScriptsTable _savedScripts;
  $SavedScriptsTable get savedScripts =>
      _savedScripts ??= $SavedScriptsTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [dumpedRecords, savedScripts];
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quran_database.dart';

// ignore_for_file: type=lint
class $SurahTable extends Surah with TableInfo<$SurahTable, SurahData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SurahTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _numberMeta = const VerificationMeta('number');
  @override
  late final GeneratedColumn<int> number = GeneratedColumn<int>(
      'number', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _nameArMeta = const VerificationMeta('nameAr');
  @override
  late final GeneratedColumn<String> nameAr = GeneratedColumn<String>(
      'name_ar', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _nameEnMeta = const VerificationMeta('nameEn');
  @override
  late final GeneratedColumn<String> nameEn = GeneratedColumn<String>(
      'name_en', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _nameRuMeta = const VerificationMeta('nameRu');
  @override
  late final GeneratedColumn<String> nameRu = GeneratedColumn<String>(
      'name_ru', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _nameUzLatMeta =
      const VerificationMeta('nameUzLat');
  @override
  late final GeneratedColumn<String> nameUzLat = GeneratedColumn<String>(
      'name_uz_lat', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _nameUzCyrMeta =
      const VerificationMeta('nameUzCyr');
  @override
  late final GeneratedColumn<String> nameUzCyr = GeneratedColumn<String>(
      'name_uz_cyr', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _nameEnMeaningMeta =
      const VerificationMeta('nameEnMeaning');
  @override
  late final GeneratedColumn<String> nameEnMeaning = GeneratedColumn<String>(
      'name_en_meaning', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _nameRuMeaningMeta =
      const VerificationMeta('nameRuMeaning');
  @override
  late final GeneratedColumn<String> nameRuMeaning = GeneratedColumn<String>(
      'name_ru_meaning', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _nameUzLatMeaningMeta =
      const VerificationMeta('nameUzLatMeaning');
  @override
  late final GeneratedColumn<String> nameUzLatMeaning = GeneratedColumn<String>(
      'name_uz_lat_meaning', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _nameUzCyrMeaningMeta =
      const VerificationMeta('nameUzCyrMeaning');
  @override
  late final GeneratedColumn<String> nameUzCyrMeaning = GeneratedColumn<String>(
      'name_uz_cyr_meaning', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _versesCountMeta =
      const VerificationMeta('versesCount');
  @override
  late final GeneratedColumn<int> versesCount = GeneratedColumn<int>(
      'verses_count', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _pageStartMeta =
      const VerificationMeta('pageStart');
  @override
  late final GeneratedColumn<int> pageStart = GeneratedColumn<int>(
      'page_start', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        number,
        nameAr,
        nameEn,
        nameRu,
        nameUzLat,
        nameUzCyr,
        nameEnMeaning,
        nameRuMeaning,
        nameUzLatMeaning,
        nameUzCyrMeaning,
        versesCount,
        pageStart
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'surah';
  @override
  VerificationContext validateIntegrity(Insertable<SurahData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('number')) {
      context.handle(_numberMeta,
          number.isAcceptableOrUnknown(data['number']!, _numberMeta));
    }
    if (data.containsKey('name_ar')) {
      context.handle(_nameArMeta,
          nameAr.isAcceptableOrUnknown(data['name_ar']!, _nameArMeta));
    } else if (isInserting) {
      context.missing(_nameArMeta);
    }
    if (data.containsKey('name_en')) {
      context.handle(_nameEnMeta,
          nameEn.isAcceptableOrUnknown(data['name_en']!, _nameEnMeta));
    } else if (isInserting) {
      context.missing(_nameEnMeta);
    }
    if (data.containsKey('name_ru')) {
      context.handle(_nameRuMeta,
          nameRu.isAcceptableOrUnknown(data['name_ru']!, _nameRuMeta));
    } else if (isInserting) {
      context.missing(_nameRuMeta);
    }
    if (data.containsKey('name_uz_lat')) {
      context.handle(
          _nameUzLatMeta,
          nameUzLat.isAcceptableOrUnknown(
              data['name_uz_lat']!, _nameUzLatMeta));
    } else if (isInserting) {
      context.missing(_nameUzLatMeta);
    }
    if (data.containsKey('name_uz_cyr')) {
      context.handle(
          _nameUzCyrMeta,
          nameUzCyr.isAcceptableOrUnknown(
              data['name_uz_cyr']!, _nameUzCyrMeta));
    } else if (isInserting) {
      context.missing(_nameUzCyrMeta);
    }
    if (data.containsKey('name_en_meaning')) {
      context.handle(
          _nameEnMeaningMeta,
          nameEnMeaning.isAcceptableOrUnknown(
              data['name_en_meaning']!, _nameEnMeaningMeta));
    } else if (isInserting) {
      context.missing(_nameEnMeaningMeta);
    }
    if (data.containsKey('name_ru_meaning')) {
      context.handle(
          _nameRuMeaningMeta,
          nameRuMeaning.isAcceptableOrUnknown(
              data['name_ru_meaning']!, _nameRuMeaningMeta));
    } else if (isInserting) {
      context.missing(_nameRuMeaningMeta);
    }
    if (data.containsKey('name_uz_lat_meaning')) {
      context.handle(
          _nameUzLatMeaningMeta,
          nameUzLatMeaning.isAcceptableOrUnknown(
              data['name_uz_lat_meaning']!, _nameUzLatMeaningMeta));
    } else if (isInserting) {
      context.missing(_nameUzLatMeaningMeta);
    }
    if (data.containsKey('name_uz_cyr_meaning')) {
      context.handle(
          _nameUzCyrMeaningMeta,
          nameUzCyrMeaning.isAcceptableOrUnknown(
              data['name_uz_cyr_meaning']!, _nameUzCyrMeaningMeta));
    } else if (isInserting) {
      context.missing(_nameUzCyrMeaningMeta);
    }
    if (data.containsKey('verses_count')) {
      context.handle(
          _versesCountMeta,
          versesCount.isAcceptableOrUnknown(
              data['verses_count']!, _versesCountMeta));
    } else if (isInserting) {
      context.missing(_versesCountMeta);
    }
    if (data.containsKey('page_start')) {
      context.handle(_pageStartMeta,
          pageStart.isAcceptableOrUnknown(data['page_start']!, _pageStartMeta));
    } else if (isInserting) {
      context.missing(_pageStartMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {number};
  @override
  SurahData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SurahData(
      number: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}number'])!,
      nameAr: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name_ar'])!,
      nameEn: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name_en'])!,
      nameRu: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name_ru'])!,
      nameUzLat: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name_uz_lat'])!,
      nameUzCyr: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name_uz_cyr'])!,
      nameEnMeaning: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}name_en_meaning'])!,
      nameRuMeaning: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}name_ru_meaning'])!,
      nameUzLatMeaning: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}name_uz_lat_meaning'])!,
      nameUzCyrMeaning: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}name_uz_cyr_meaning'])!,
      versesCount: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}verses_count'])!,
      pageStart: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}page_start'])!,
    );
  }

  @override
  $SurahTable createAlias(String alias) {
    return $SurahTable(attachedDatabase, alias);
  }
}

class SurahData extends DataClass implements Insertable<SurahData> {
  final int number;
  final String nameAr;
  final String nameEn;
  final String nameRu;
  final String nameUzLat;
  final String nameUzCyr;
  final String nameEnMeaning;
  final String nameRuMeaning;
  final String nameUzLatMeaning;
  final String nameUzCyrMeaning;
  final int versesCount;
  final int pageStart;
  const SurahData(
      {required this.number,
      required this.nameAr,
      required this.nameEn,
      required this.nameRu,
      required this.nameUzLat,
      required this.nameUzCyr,
      required this.nameEnMeaning,
      required this.nameRuMeaning,
      required this.nameUzLatMeaning,
      required this.nameUzCyrMeaning,
      required this.versesCount,
      required this.pageStart});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['number'] = Variable<int>(number);
    map['name_ar'] = Variable<String>(nameAr);
    map['name_en'] = Variable<String>(nameEn);
    map['name_ru'] = Variable<String>(nameRu);
    map['name_uz_lat'] = Variable<String>(nameUzLat);
    map['name_uz_cyr'] = Variable<String>(nameUzCyr);
    map['name_en_meaning'] = Variable<String>(nameEnMeaning);
    map['name_ru_meaning'] = Variable<String>(nameRuMeaning);
    map['name_uz_lat_meaning'] = Variable<String>(nameUzLatMeaning);
    map['name_uz_cyr_meaning'] = Variable<String>(nameUzCyrMeaning);
    map['verses_count'] = Variable<int>(versesCount);
    map['page_start'] = Variable<int>(pageStart);
    return map;
  }

  SurahCompanion toCompanion(bool nullToAbsent) {
    return SurahCompanion(
      number: Value(number),
      nameAr: Value(nameAr),
      nameEn: Value(nameEn),
      nameRu: Value(nameRu),
      nameUzLat: Value(nameUzLat),
      nameUzCyr: Value(nameUzCyr),
      nameEnMeaning: Value(nameEnMeaning),
      nameRuMeaning: Value(nameRuMeaning),
      nameUzLatMeaning: Value(nameUzLatMeaning),
      nameUzCyrMeaning: Value(nameUzCyrMeaning),
      versesCount: Value(versesCount),
      pageStart: Value(pageStart),
    );
  }

  factory SurahData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SurahData(
      number: serializer.fromJson<int>(json['number']),
      nameAr: serializer.fromJson<String>(json['nameAr']),
      nameEn: serializer.fromJson<String>(json['nameEn']),
      nameRu: serializer.fromJson<String>(json['nameRu']),
      nameUzLat: serializer.fromJson<String>(json['nameUzLat']),
      nameUzCyr: serializer.fromJson<String>(json['nameUzCyr']),
      nameEnMeaning: serializer.fromJson<String>(json['nameEnMeaning']),
      nameRuMeaning: serializer.fromJson<String>(json['nameRuMeaning']),
      nameUzLatMeaning: serializer.fromJson<String>(json['nameUzLatMeaning']),
      nameUzCyrMeaning: serializer.fromJson<String>(json['nameUzCyrMeaning']),
      versesCount: serializer.fromJson<int>(json['versesCount']),
      pageStart: serializer.fromJson<int>(json['pageStart']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'number': serializer.toJson<int>(number),
      'nameAr': serializer.toJson<String>(nameAr),
      'nameEn': serializer.toJson<String>(nameEn),
      'nameRu': serializer.toJson<String>(nameRu),
      'nameUzLat': serializer.toJson<String>(nameUzLat),
      'nameUzCyr': serializer.toJson<String>(nameUzCyr),
      'nameEnMeaning': serializer.toJson<String>(nameEnMeaning),
      'nameRuMeaning': serializer.toJson<String>(nameRuMeaning),
      'nameUzLatMeaning': serializer.toJson<String>(nameUzLatMeaning),
      'nameUzCyrMeaning': serializer.toJson<String>(nameUzCyrMeaning),
      'versesCount': serializer.toJson<int>(versesCount),
      'pageStart': serializer.toJson<int>(pageStart),
    };
  }

  SurahData copyWith(
          {int? number,
          String? nameAr,
          String? nameEn,
          String? nameRu,
          String? nameUzLat,
          String? nameUzCyr,
          String? nameEnMeaning,
          String? nameRuMeaning,
          String? nameUzLatMeaning,
          String? nameUzCyrMeaning,
          int? versesCount,
          int? pageStart}) =>
      SurahData(
        number: number ?? this.number,
        nameAr: nameAr ?? this.nameAr,
        nameEn: nameEn ?? this.nameEn,
        nameRu: nameRu ?? this.nameRu,
        nameUzLat: nameUzLat ?? this.nameUzLat,
        nameUzCyr: nameUzCyr ?? this.nameUzCyr,
        nameEnMeaning: nameEnMeaning ?? this.nameEnMeaning,
        nameRuMeaning: nameRuMeaning ?? this.nameRuMeaning,
        nameUzLatMeaning: nameUzLatMeaning ?? this.nameUzLatMeaning,
        nameUzCyrMeaning: nameUzCyrMeaning ?? this.nameUzCyrMeaning,
        versesCount: versesCount ?? this.versesCount,
        pageStart: pageStart ?? this.pageStart,
      );
  SurahData copyWithCompanion(SurahCompanion data) {
    return SurahData(
      number: data.number.present ? data.number.value : this.number,
      nameAr: data.nameAr.present ? data.nameAr.value : this.nameAr,
      nameEn: data.nameEn.present ? data.nameEn.value : this.nameEn,
      nameRu: data.nameRu.present ? data.nameRu.value : this.nameRu,
      nameUzLat: data.nameUzLat.present ? data.nameUzLat.value : this.nameUzLat,
      nameUzCyr: data.nameUzCyr.present ? data.nameUzCyr.value : this.nameUzCyr,
      nameEnMeaning: data.nameEnMeaning.present
          ? data.nameEnMeaning.value
          : this.nameEnMeaning,
      nameRuMeaning: data.nameRuMeaning.present
          ? data.nameRuMeaning.value
          : this.nameRuMeaning,
      nameUzLatMeaning: data.nameUzLatMeaning.present
          ? data.nameUzLatMeaning.value
          : this.nameUzLatMeaning,
      nameUzCyrMeaning: data.nameUzCyrMeaning.present
          ? data.nameUzCyrMeaning.value
          : this.nameUzCyrMeaning,
      versesCount:
          data.versesCount.present ? data.versesCount.value : this.versesCount,
      pageStart: data.pageStart.present ? data.pageStart.value : this.pageStart,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SurahData(')
          ..write('number: $number, ')
          ..write('nameAr: $nameAr, ')
          ..write('nameEn: $nameEn, ')
          ..write('nameRu: $nameRu, ')
          ..write('nameUzLat: $nameUzLat, ')
          ..write('nameUzCyr: $nameUzCyr, ')
          ..write('nameEnMeaning: $nameEnMeaning, ')
          ..write('nameRuMeaning: $nameRuMeaning, ')
          ..write('nameUzLatMeaning: $nameUzLatMeaning, ')
          ..write('nameUzCyrMeaning: $nameUzCyrMeaning, ')
          ..write('versesCount: $versesCount, ')
          ..write('pageStart: $pageStart')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      number,
      nameAr,
      nameEn,
      nameRu,
      nameUzLat,
      nameUzCyr,
      nameEnMeaning,
      nameRuMeaning,
      nameUzLatMeaning,
      nameUzCyrMeaning,
      versesCount,
      pageStart);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SurahData &&
          other.number == this.number &&
          other.nameAr == this.nameAr &&
          other.nameEn == this.nameEn &&
          other.nameRu == this.nameRu &&
          other.nameUzLat == this.nameUzLat &&
          other.nameUzCyr == this.nameUzCyr &&
          other.nameEnMeaning == this.nameEnMeaning &&
          other.nameRuMeaning == this.nameRuMeaning &&
          other.nameUzLatMeaning == this.nameUzLatMeaning &&
          other.nameUzCyrMeaning == this.nameUzCyrMeaning &&
          other.versesCount == this.versesCount &&
          other.pageStart == this.pageStart);
}

class SurahCompanion extends UpdateCompanion<SurahData> {
  final Value<int> number;
  final Value<String> nameAr;
  final Value<String> nameEn;
  final Value<String> nameRu;
  final Value<String> nameUzLat;
  final Value<String> nameUzCyr;
  final Value<String> nameEnMeaning;
  final Value<String> nameRuMeaning;
  final Value<String> nameUzLatMeaning;
  final Value<String> nameUzCyrMeaning;
  final Value<int> versesCount;
  final Value<int> pageStart;
  const SurahCompanion({
    this.number = const Value.absent(),
    this.nameAr = const Value.absent(),
    this.nameEn = const Value.absent(),
    this.nameRu = const Value.absent(),
    this.nameUzLat = const Value.absent(),
    this.nameUzCyr = const Value.absent(),
    this.nameEnMeaning = const Value.absent(),
    this.nameRuMeaning = const Value.absent(),
    this.nameUzLatMeaning = const Value.absent(),
    this.nameUzCyrMeaning = const Value.absent(),
    this.versesCount = const Value.absent(),
    this.pageStart = const Value.absent(),
  });
  SurahCompanion.insert({
    this.number = const Value.absent(),
    required String nameAr,
    required String nameEn,
    required String nameRu,
    required String nameUzLat,
    required String nameUzCyr,
    required String nameEnMeaning,
    required String nameRuMeaning,
    required String nameUzLatMeaning,
    required String nameUzCyrMeaning,
    required int versesCount,
    required int pageStart,
  })  : nameAr = Value(nameAr),
        nameEn = Value(nameEn),
        nameRu = Value(nameRu),
        nameUzLat = Value(nameUzLat),
        nameUzCyr = Value(nameUzCyr),
        nameEnMeaning = Value(nameEnMeaning),
        nameRuMeaning = Value(nameRuMeaning),
        nameUzLatMeaning = Value(nameUzLatMeaning),
        nameUzCyrMeaning = Value(nameUzCyrMeaning),
        versesCount = Value(versesCount),
        pageStart = Value(pageStart);
  static Insertable<SurahData> custom({
    Expression<int>? number,
    Expression<String>? nameAr,
    Expression<String>? nameEn,
    Expression<String>? nameRu,
    Expression<String>? nameUzLat,
    Expression<String>? nameUzCyr,
    Expression<String>? nameEnMeaning,
    Expression<String>? nameRuMeaning,
    Expression<String>? nameUzLatMeaning,
    Expression<String>? nameUzCyrMeaning,
    Expression<int>? versesCount,
    Expression<int>? pageStart,
  }) {
    return RawValuesInsertable({
      if (number != null) 'number': number,
      if (nameAr != null) 'name_ar': nameAr,
      if (nameEn != null) 'name_en': nameEn,
      if (nameRu != null) 'name_ru': nameRu,
      if (nameUzLat != null) 'name_uz_lat': nameUzLat,
      if (nameUzCyr != null) 'name_uz_cyr': nameUzCyr,
      if (nameEnMeaning != null) 'name_en_meaning': nameEnMeaning,
      if (nameRuMeaning != null) 'name_ru_meaning': nameRuMeaning,
      if (nameUzLatMeaning != null) 'name_uz_lat_meaning': nameUzLatMeaning,
      if (nameUzCyrMeaning != null) 'name_uz_cyr_meaning': nameUzCyrMeaning,
      if (versesCount != null) 'verses_count': versesCount,
      if (pageStart != null) 'page_start': pageStart,
    });
  }

  SurahCompanion copyWith(
      {Value<int>? number,
      Value<String>? nameAr,
      Value<String>? nameEn,
      Value<String>? nameRu,
      Value<String>? nameUzLat,
      Value<String>? nameUzCyr,
      Value<String>? nameEnMeaning,
      Value<String>? nameRuMeaning,
      Value<String>? nameUzLatMeaning,
      Value<String>? nameUzCyrMeaning,
      Value<int>? versesCount,
      Value<int>? pageStart}) {
    return SurahCompanion(
      number: number ?? this.number,
      nameAr: nameAr ?? this.nameAr,
      nameEn: nameEn ?? this.nameEn,
      nameRu: nameRu ?? this.nameRu,
      nameUzLat: nameUzLat ?? this.nameUzLat,
      nameUzCyr: nameUzCyr ?? this.nameUzCyr,
      nameEnMeaning: nameEnMeaning ?? this.nameEnMeaning,
      nameRuMeaning: nameRuMeaning ?? this.nameRuMeaning,
      nameUzLatMeaning: nameUzLatMeaning ?? this.nameUzLatMeaning,
      nameUzCyrMeaning: nameUzCyrMeaning ?? this.nameUzCyrMeaning,
      versesCount: versesCount ?? this.versesCount,
      pageStart: pageStart ?? this.pageStart,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (number.present) {
      map['number'] = Variable<int>(number.value);
    }
    if (nameAr.present) {
      map['name_ar'] = Variable<String>(nameAr.value);
    }
    if (nameEn.present) {
      map['name_en'] = Variable<String>(nameEn.value);
    }
    if (nameRu.present) {
      map['name_ru'] = Variable<String>(nameRu.value);
    }
    if (nameUzLat.present) {
      map['name_uz_lat'] = Variable<String>(nameUzLat.value);
    }
    if (nameUzCyr.present) {
      map['name_uz_cyr'] = Variable<String>(nameUzCyr.value);
    }
    if (nameEnMeaning.present) {
      map['name_en_meaning'] = Variable<String>(nameEnMeaning.value);
    }
    if (nameRuMeaning.present) {
      map['name_ru_meaning'] = Variable<String>(nameRuMeaning.value);
    }
    if (nameUzLatMeaning.present) {
      map['name_uz_lat_meaning'] = Variable<String>(nameUzLatMeaning.value);
    }
    if (nameUzCyrMeaning.present) {
      map['name_uz_cyr_meaning'] = Variable<String>(nameUzCyrMeaning.value);
    }
    if (versesCount.present) {
      map['verses_count'] = Variable<int>(versesCount.value);
    }
    if (pageStart.present) {
      map['page_start'] = Variable<int>(pageStart.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SurahCompanion(')
          ..write('number: $number, ')
          ..write('nameAr: $nameAr, ')
          ..write('nameEn: $nameEn, ')
          ..write('nameRu: $nameRu, ')
          ..write('nameUzLat: $nameUzLat, ')
          ..write('nameUzCyr: $nameUzCyr, ')
          ..write('nameEnMeaning: $nameEnMeaning, ')
          ..write('nameRuMeaning: $nameRuMeaning, ')
          ..write('nameUzLatMeaning: $nameUzLatMeaning, ')
          ..write('nameUzCyrMeaning: $nameUzCyrMeaning, ')
          ..write('versesCount: $versesCount, ')
          ..write('pageStart: $pageStart')
          ..write(')'))
        .toString();
  }
}

class $AyahsTable extends Ayahs with TableInfo<$AyahsTable, Ayah> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AyahsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _surahIdMeta =
      const VerificationMeta('surahId');
  @override
  late final GeneratedColumn<int> surahId = GeneratedColumn<int>(
      'surah_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _ayahNumberMeta =
      const VerificationMeta('ayahNumber');
  @override
  late final GeneratedColumn<int> ayahNumber = GeneratedColumn<int>(
      'ayah_number', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _textEnMeta = const VerificationMeta('textEn');
  @override
  late final GeneratedColumn<String> textEn = GeneratedColumn<String>(
      'text_en', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _textRuMeta = const VerificationMeta('textRu');
  @override
  late final GeneratedColumn<String> textRu = GeneratedColumn<String>(
      'text_ru', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _textUzLatMeta =
      const VerificationMeta('textUzLat');
  @override
  late final GeneratedColumn<String> textUzLat = GeneratedColumn<String>(
      'text_uz_lat', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _textUzCyrMeta =
      const VerificationMeta('textUzCyr');
  @override
  late final GeneratedColumn<String> textUzCyr = GeneratedColumn<String>(
      'text_uz_cyr', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, surahId, ayahNumber, textEn, textRu, textUzLat, textUzCyr];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'ayahs';
  @override
  VerificationContext validateIntegrity(Insertable<Ayah> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('surah_id')) {
      context.handle(_surahIdMeta,
          surahId.isAcceptableOrUnknown(data['surah_id']!, _surahIdMeta));
    } else if (isInserting) {
      context.missing(_surahIdMeta);
    }
    if (data.containsKey('ayah_number')) {
      context.handle(
          _ayahNumberMeta,
          ayahNumber.isAcceptableOrUnknown(
              data['ayah_number']!, _ayahNumberMeta));
    } else if (isInserting) {
      context.missing(_ayahNumberMeta);
    }
    if (data.containsKey('text_en')) {
      context.handle(_textEnMeta,
          textEn.isAcceptableOrUnknown(data['text_en']!, _textEnMeta));
    } else if (isInserting) {
      context.missing(_textEnMeta);
    }
    if (data.containsKey('text_ru')) {
      context.handle(_textRuMeta,
          textRu.isAcceptableOrUnknown(data['text_ru']!, _textRuMeta));
    } else if (isInserting) {
      context.missing(_textRuMeta);
    }
    if (data.containsKey('text_uz_lat')) {
      context.handle(
          _textUzLatMeta,
          textUzLat.isAcceptableOrUnknown(
              data['text_uz_lat']!, _textUzLatMeta));
    } else if (isInserting) {
      context.missing(_textUzLatMeta);
    }
    if (data.containsKey('text_uz_cyr')) {
      context.handle(
          _textUzCyrMeta,
          textUzCyr.isAcceptableOrUnknown(
              data['text_uz_cyr']!, _textUzCyrMeta));
    } else if (isInserting) {
      context.missing(_textUzCyrMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Ayah map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Ayah(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      surahId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}surah_id'])!,
      ayahNumber: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}ayah_number'])!,
      textEn: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}text_en'])!,
      textRu: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}text_ru'])!,
      textUzLat: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}text_uz_lat'])!,
      textUzCyr: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}text_uz_cyr'])!,
    );
  }

  @override
  $AyahsTable createAlias(String alias) {
    return $AyahsTable(attachedDatabase, alias);
  }
}

class Ayah extends DataClass implements Insertable<Ayah> {
  final int id;
  final int surahId;
  final int ayahNumber;
  final String textEn;
  final String textRu;
  final String textUzLat;
  final String textUzCyr;
  const Ayah(
      {required this.id,
      required this.surahId,
      required this.ayahNumber,
      required this.textEn,
      required this.textRu,
      required this.textUzLat,
      required this.textUzCyr});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['surah_id'] = Variable<int>(surahId);
    map['ayah_number'] = Variable<int>(ayahNumber);
    map['text_en'] = Variable<String>(textEn);
    map['text_ru'] = Variable<String>(textRu);
    map['text_uz_lat'] = Variable<String>(textUzLat);
    map['text_uz_cyr'] = Variable<String>(textUzCyr);
    return map;
  }

  AyahsCompanion toCompanion(bool nullToAbsent) {
    return AyahsCompanion(
      id: Value(id),
      surahId: Value(surahId),
      ayahNumber: Value(ayahNumber),
      textEn: Value(textEn),
      textRu: Value(textRu),
      textUzLat: Value(textUzLat),
      textUzCyr: Value(textUzCyr),
    );
  }

  factory Ayah.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Ayah(
      id: serializer.fromJson<int>(json['id']),
      surahId: serializer.fromJson<int>(json['surahId']),
      ayahNumber: serializer.fromJson<int>(json['ayahNumber']),
      textEn: serializer.fromJson<String>(json['textEn']),
      textRu: serializer.fromJson<String>(json['textRu']),
      textUzLat: serializer.fromJson<String>(json['textUzLat']),
      textUzCyr: serializer.fromJson<String>(json['textUzCyr']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'surahId': serializer.toJson<int>(surahId),
      'ayahNumber': serializer.toJson<int>(ayahNumber),
      'textEn': serializer.toJson<String>(textEn),
      'textRu': serializer.toJson<String>(textRu),
      'textUzLat': serializer.toJson<String>(textUzLat),
      'textUzCyr': serializer.toJson<String>(textUzCyr),
    };
  }

  Ayah copyWith(
          {int? id,
          int? surahId,
          int? ayahNumber,
          String? textEn,
          String? textRu,
          String? textUzLat,
          String? textUzCyr}) =>
      Ayah(
        id: id ?? this.id,
        surahId: surahId ?? this.surahId,
        ayahNumber: ayahNumber ?? this.ayahNumber,
        textEn: textEn ?? this.textEn,
        textRu: textRu ?? this.textRu,
        textUzLat: textUzLat ?? this.textUzLat,
        textUzCyr: textUzCyr ?? this.textUzCyr,
      );
  Ayah copyWithCompanion(AyahsCompanion data) {
    return Ayah(
      id: data.id.present ? data.id.value : this.id,
      surahId: data.surahId.present ? data.surahId.value : this.surahId,
      ayahNumber:
          data.ayahNumber.present ? data.ayahNumber.value : this.ayahNumber,
      textEn: data.textEn.present ? data.textEn.value : this.textEn,
      textRu: data.textRu.present ? data.textRu.value : this.textRu,
      textUzLat: data.textUzLat.present ? data.textUzLat.value : this.textUzLat,
      textUzCyr: data.textUzCyr.present ? data.textUzCyr.value : this.textUzCyr,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Ayah(')
          ..write('id: $id, ')
          ..write('surahId: $surahId, ')
          ..write('ayahNumber: $ayahNumber, ')
          ..write('textEn: $textEn, ')
          ..write('textRu: $textRu, ')
          ..write('textUzLat: $textUzLat, ')
          ..write('textUzCyr: $textUzCyr')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id, surahId, ayahNumber, textEn, textRu, textUzLat, textUzCyr);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Ayah &&
          other.id == this.id &&
          other.surahId == this.surahId &&
          other.ayahNumber == this.ayahNumber &&
          other.textEn == this.textEn &&
          other.textRu == this.textRu &&
          other.textUzLat == this.textUzLat &&
          other.textUzCyr == this.textUzCyr);
}

class AyahsCompanion extends UpdateCompanion<Ayah> {
  final Value<int> id;
  final Value<int> surahId;
  final Value<int> ayahNumber;
  final Value<String> textEn;
  final Value<String> textRu;
  final Value<String> textUzLat;
  final Value<String> textUzCyr;
  const AyahsCompanion({
    this.id = const Value.absent(),
    this.surahId = const Value.absent(),
    this.ayahNumber = const Value.absent(),
    this.textEn = const Value.absent(),
    this.textRu = const Value.absent(),
    this.textUzLat = const Value.absent(),
    this.textUzCyr = const Value.absent(),
  });
  AyahsCompanion.insert({
    this.id = const Value.absent(),
    required int surahId,
    required int ayahNumber,
    required String textEn,
    required String textRu,
    required String textUzLat,
    required String textUzCyr,
  })  : surahId = Value(surahId),
        ayahNumber = Value(ayahNumber),
        textEn = Value(textEn),
        textRu = Value(textRu),
        textUzLat = Value(textUzLat),
        textUzCyr = Value(textUzCyr);
  static Insertable<Ayah> custom({
    Expression<int>? id,
    Expression<int>? surahId,
    Expression<int>? ayahNumber,
    Expression<String>? textEn,
    Expression<String>? textRu,
    Expression<String>? textUzLat,
    Expression<String>? textUzCyr,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (surahId != null) 'surah_id': surahId,
      if (ayahNumber != null) 'ayah_number': ayahNumber,
      if (textEn != null) 'text_en': textEn,
      if (textRu != null) 'text_ru': textRu,
      if (textUzLat != null) 'text_uz_lat': textUzLat,
      if (textUzCyr != null) 'text_uz_cyr': textUzCyr,
    });
  }

  AyahsCompanion copyWith(
      {Value<int>? id,
      Value<int>? surahId,
      Value<int>? ayahNumber,
      Value<String>? textEn,
      Value<String>? textRu,
      Value<String>? textUzLat,
      Value<String>? textUzCyr}) {
    return AyahsCompanion(
      id: id ?? this.id,
      surahId: surahId ?? this.surahId,
      ayahNumber: ayahNumber ?? this.ayahNumber,
      textEn: textEn ?? this.textEn,
      textRu: textRu ?? this.textRu,
      textUzLat: textUzLat ?? this.textUzLat,
      textUzCyr: textUzCyr ?? this.textUzCyr,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (surahId.present) {
      map['surah_id'] = Variable<int>(surahId.value);
    }
    if (ayahNumber.present) {
      map['ayah_number'] = Variable<int>(ayahNumber.value);
    }
    if (textEn.present) {
      map['text_en'] = Variable<String>(textEn.value);
    }
    if (textRu.present) {
      map['text_ru'] = Variable<String>(textRu.value);
    }
    if (textUzLat.present) {
      map['text_uz_lat'] = Variable<String>(textUzLat.value);
    }
    if (textUzCyr.present) {
      map['text_uz_cyr'] = Variable<String>(textUzCyr.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AyahsCompanion(')
          ..write('id: $id, ')
          ..write('surahId: $surahId, ')
          ..write('ayahNumber: $ayahNumber, ')
          ..write('textEn: $textEn, ')
          ..write('textRu: $textRu, ')
          ..write('textUzLat: $textUzLat, ')
          ..write('textUzCyr: $textUzCyr')
          ..write(')'))
        .toString();
  }
}

class $JuzTable extends Juz with TableInfo<$JuzTable, JuzData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $JuzTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _numberMeta = const VerificationMeta('number');
  @override
  late final GeneratedColumn<int> number = GeneratedColumn<int>(
      'number', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _nameArMeta = const VerificationMeta('nameAr');
  @override
  late final GeneratedColumn<String> nameAr = GeneratedColumn<String>(
      'name_ar', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _nameEnMeta = const VerificationMeta('nameEn');
  @override
  late final GeneratedColumn<String> nameEn = GeneratedColumn<String>(
      'name_en', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _startSurahNumberMeta =
      const VerificationMeta('startSurahNumber');
  @override
  late final GeneratedColumn<int> startSurahNumber = GeneratedColumn<int>(
      'start_surah_number', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _startAyahNumberMeta =
      const VerificationMeta('startAyahNumber');
  @override
  late final GeneratedColumn<int> startAyahNumber = GeneratedColumn<int>(
      'start_ayah_number', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _endSurahNumberMeta =
      const VerificationMeta('endSurahNumber');
  @override
  late final GeneratedColumn<int> endSurahNumber = GeneratedColumn<int>(
      'end_surah_number', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _endAyahNumberMeta =
      const VerificationMeta('endAyahNumber');
  @override
  late final GeneratedColumn<int> endAyahNumber = GeneratedColumn<int>(
      'end_ayah_number', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        number,
        nameAr,
        nameEn,
        startSurahNumber,
        startAyahNumber,
        endSurahNumber,
        endAyahNumber
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'juz';
  @override
  VerificationContext validateIntegrity(Insertable<JuzData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('number')) {
      context.handle(_numberMeta,
          number.isAcceptableOrUnknown(data['number']!, _numberMeta));
    }
    if (data.containsKey('name_ar')) {
      context.handle(_nameArMeta,
          nameAr.isAcceptableOrUnknown(data['name_ar']!, _nameArMeta));
    } else if (isInserting) {
      context.missing(_nameArMeta);
    }
    if (data.containsKey('name_en')) {
      context.handle(_nameEnMeta,
          nameEn.isAcceptableOrUnknown(data['name_en']!, _nameEnMeta));
    } else if (isInserting) {
      context.missing(_nameEnMeta);
    }
    if (data.containsKey('start_surah_number')) {
      context.handle(
          _startSurahNumberMeta,
          startSurahNumber.isAcceptableOrUnknown(
              data['start_surah_number']!, _startSurahNumberMeta));
    } else if (isInserting) {
      context.missing(_startSurahNumberMeta);
    }
    if (data.containsKey('start_ayah_number')) {
      context.handle(
          _startAyahNumberMeta,
          startAyahNumber.isAcceptableOrUnknown(
              data['start_ayah_number']!, _startAyahNumberMeta));
    } else if (isInserting) {
      context.missing(_startAyahNumberMeta);
    }
    if (data.containsKey('end_surah_number')) {
      context.handle(
          _endSurahNumberMeta,
          endSurahNumber.isAcceptableOrUnknown(
              data['end_surah_number']!, _endSurahNumberMeta));
    } else if (isInserting) {
      context.missing(_endSurahNumberMeta);
    }
    if (data.containsKey('end_ayah_number')) {
      context.handle(
          _endAyahNumberMeta,
          endAyahNumber.isAcceptableOrUnknown(
              data['end_ayah_number']!, _endAyahNumberMeta));
    } else if (isInserting) {
      context.missing(_endAyahNumberMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {number};
  @override
  JuzData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return JuzData(
      number: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}number'])!,
      nameAr: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name_ar'])!,
      nameEn: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name_en'])!,
      startSurahNumber: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}start_surah_number'])!,
      startAyahNumber: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}start_ayah_number'])!,
      endSurahNumber: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}end_surah_number'])!,
      endAyahNumber: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}end_ayah_number'])!,
    );
  }

  @override
  $JuzTable createAlias(String alias) {
    return $JuzTable(attachedDatabase, alias);
  }
}

class JuzData extends DataClass implements Insertable<JuzData> {
  final int number;
  final String nameAr;
  final String nameEn;
  final int startSurahNumber;
  final int startAyahNumber;
  final int endSurahNumber;
  final int endAyahNumber;
  const JuzData(
      {required this.number,
      required this.nameAr,
      required this.nameEn,
      required this.startSurahNumber,
      required this.startAyahNumber,
      required this.endSurahNumber,
      required this.endAyahNumber});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['number'] = Variable<int>(number);
    map['name_ar'] = Variable<String>(nameAr);
    map['name_en'] = Variable<String>(nameEn);
    map['start_surah_number'] = Variable<int>(startSurahNumber);
    map['start_ayah_number'] = Variable<int>(startAyahNumber);
    map['end_surah_number'] = Variable<int>(endSurahNumber);
    map['end_ayah_number'] = Variable<int>(endAyahNumber);
    return map;
  }

  JuzCompanion toCompanion(bool nullToAbsent) {
    return JuzCompanion(
      number: Value(number),
      nameAr: Value(nameAr),
      nameEn: Value(nameEn),
      startSurahNumber: Value(startSurahNumber),
      startAyahNumber: Value(startAyahNumber),
      endSurahNumber: Value(endSurahNumber),
      endAyahNumber: Value(endAyahNumber),
    );
  }

  factory JuzData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return JuzData(
      number: serializer.fromJson<int>(json['number']),
      nameAr: serializer.fromJson<String>(json['nameAr']),
      nameEn: serializer.fromJson<String>(json['nameEn']),
      startSurahNumber: serializer.fromJson<int>(json['startSurahNumber']),
      startAyahNumber: serializer.fromJson<int>(json['startAyahNumber']),
      endSurahNumber: serializer.fromJson<int>(json['endSurahNumber']),
      endAyahNumber: serializer.fromJson<int>(json['endAyahNumber']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'number': serializer.toJson<int>(number),
      'nameAr': serializer.toJson<String>(nameAr),
      'nameEn': serializer.toJson<String>(nameEn),
      'startSurahNumber': serializer.toJson<int>(startSurahNumber),
      'startAyahNumber': serializer.toJson<int>(startAyahNumber),
      'endSurahNumber': serializer.toJson<int>(endSurahNumber),
      'endAyahNumber': serializer.toJson<int>(endAyahNumber),
    };
  }

  JuzData copyWith(
          {int? number,
          String? nameAr,
          String? nameEn,
          int? startSurahNumber,
          int? startAyahNumber,
          int? endSurahNumber,
          int? endAyahNumber}) =>
      JuzData(
        number: number ?? this.number,
        nameAr: nameAr ?? this.nameAr,
        nameEn: nameEn ?? this.nameEn,
        startSurahNumber: startSurahNumber ?? this.startSurahNumber,
        startAyahNumber: startAyahNumber ?? this.startAyahNumber,
        endSurahNumber: endSurahNumber ?? this.endSurahNumber,
        endAyahNumber: endAyahNumber ?? this.endAyahNumber,
      );
  JuzData copyWithCompanion(JuzCompanion data) {
    return JuzData(
      number: data.number.present ? data.number.value : this.number,
      nameAr: data.nameAr.present ? data.nameAr.value : this.nameAr,
      nameEn: data.nameEn.present ? data.nameEn.value : this.nameEn,
      startSurahNumber: data.startSurahNumber.present
          ? data.startSurahNumber.value
          : this.startSurahNumber,
      startAyahNumber: data.startAyahNumber.present
          ? data.startAyahNumber.value
          : this.startAyahNumber,
      endSurahNumber: data.endSurahNumber.present
          ? data.endSurahNumber.value
          : this.endSurahNumber,
      endAyahNumber: data.endAyahNumber.present
          ? data.endAyahNumber.value
          : this.endAyahNumber,
    );
  }

  @override
  String toString() {
    return (StringBuffer('JuzData(')
          ..write('number: $number, ')
          ..write('nameAr: $nameAr, ')
          ..write('nameEn: $nameEn, ')
          ..write('startSurahNumber: $startSurahNumber, ')
          ..write('startAyahNumber: $startAyahNumber, ')
          ..write('endSurahNumber: $endSurahNumber, ')
          ..write('endAyahNumber: $endAyahNumber')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(number, nameAr, nameEn, startSurahNumber,
      startAyahNumber, endSurahNumber, endAyahNumber);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is JuzData &&
          other.number == this.number &&
          other.nameAr == this.nameAr &&
          other.nameEn == this.nameEn &&
          other.startSurahNumber == this.startSurahNumber &&
          other.startAyahNumber == this.startAyahNumber &&
          other.endSurahNumber == this.endSurahNumber &&
          other.endAyahNumber == this.endAyahNumber);
}

class JuzCompanion extends UpdateCompanion<JuzData> {
  final Value<int> number;
  final Value<String> nameAr;
  final Value<String> nameEn;
  final Value<int> startSurahNumber;
  final Value<int> startAyahNumber;
  final Value<int> endSurahNumber;
  final Value<int> endAyahNumber;
  const JuzCompanion({
    this.number = const Value.absent(),
    this.nameAr = const Value.absent(),
    this.nameEn = const Value.absent(),
    this.startSurahNumber = const Value.absent(),
    this.startAyahNumber = const Value.absent(),
    this.endSurahNumber = const Value.absent(),
    this.endAyahNumber = const Value.absent(),
  });
  JuzCompanion.insert({
    this.number = const Value.absent(),
    required String nameAr,
    required String nameEn,
    required int startSurahNumber,
    required int startAyahNumber,
    required int endSurahNumber,
    required int endAyahNumber,
  })  : nameAr = Value(nameAr),
        nameEn = Value(nameEn),
        startSurahNumber = Value(startSurahNumber),
        startAyahNumber = Value(startAyahNumber),
        endSurahNumber = Value(endSurahNumber),
        endAyahNumber = Value(endAyahNumber);
  static Insertable<JuzData> custom({
    Expression<int>? number,
    Expression<String>? nameAr,
    Expression<String>? nameEn,
    Expression<int>? startSurahNumber,
    Expression<int>? startAyahNumber,
    Expression<int>? endSurahNumber,
    Expression<int>? endAyahNumber,
  }) {
    return RawValuesInsertable({
      if (number != null) 'number': number,
      if (nameAr != null) 'name_ar': nameAr,
      if (nameEn != null) 'name_en': nameEn,
      if (startSurahNumber != null) 'start_surah_number': startSurahNumber,
      if (startAyahNumber != null) 'start_ayah_number': startAyahNumber,
      if (endSurahNumber != null) 'end_surah_number': endSurahNumber,
      if (endAyahNumber != null) 'end_ayah_number': endAyahNumber,
    });
  }

  JuzCompanion copyWith(
      {Value<int>? number,
      Value<String>? nameAr,
      Value<String>? nameEn,
      Value<int>? startSurahNumber,
      Value<int>? startAyahNumber,
      Value<int>? endSurahNumber,
      Value<int>? endAyahNumber}) {
    return JuzCompanion(
      number: number ?? this.number,
      nameAr: nameAr ?? this.nameAr,
      nameEn: nameEn ?? this.nameEn,
      startSurahNumber: startSurahNumber ?? this.startSurahNumber,
      startAyahNumber: startAyahNumber ?? this.startAyahNumber,
      endSurahNumber: endSurahNumber ?? this.endSurahNumber,
      endAyahNumber: endAyahNumber ?? this.endAyahNumber,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (number.present) {
      map['number'] = Variable<int>(number.value);
    }
    if (nameAr.present) {
      map['name_ar'] = Variable<String>(nameAr.value);
    }
    if (nameEn.present) {
      map['name_en'] = Variable<String>(nameEn.value);
    }
    if (startSurahNumber.present) {
      map['start_surah_number'] = Variable<int>(startSurahNumber.value);
    }
    if (startAyahNumber.present) {
      map['start_ayah_number'] = Variable<int>(startAyahNumber.value);
    }
    if (endSurahNumber.present) {
      map['end_surah_number'] = Variable<int>(endSurahNumber.value);
    }
    if (endAyahNumber.present) {
      map['end_ayah_number'] = Variable<int>(endAyahNumber.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('JuzCompanion(')
          ..write('number: $number, ')
          ..write('nameAr: $nameAr, ')
          ..write('nameEn: $nameEn, ')
          ..write('startSurahNumber: $startSurahNumber, ')
          ..write('startAyahNumber: $startAyahNumber, ')
          ..write('endSurahNumber: $endSurahNumber, ')
          ..write('endAyahNumber: $endAyahNumber')
          ..write(')'))
        .toString();
  }
}

class $QuranLineTable extends QuranLine
    with TableInfo<$QuranLineTable, QuranLineData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $QuranLineTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _pageNumberMeta =
      const VerificationMeta('pageNumber');
  @override
  late final GeneratedColumn<int> pageNumber = GeneratedColumn<int>(
      'page_number', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<String> type = GeneratedColumn<String>(
      'type', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _verseRangeMeta =
      const VerificationMeta('verseRange');
  @override
  late final GeneratedColumn<String> verseRange = GeneratedColumn<String>(
      'verse_range', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, pageNumber, type, verseRange];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'quran_line';
  @override
  VerificationContext validateIntegrity(Insertable<QuranLineData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('page_number')) {
      context.handle(
          _pageNumberMeta,
          pageNumber.isAcceptableOrUnknown(
              data['page_number']!, _pageNumberMeta));
    } else if (isInserting) {
      context.missing(_pageNumberMeta);
    }
    if (data.containsKey('type')) {
      context.handle(
          _typeMeta, type.isAcceptableOrUnknown(data['type']!, _typeMeta));
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    if (data.containsKey('verse_range')) {
      context.handle(
          _verseRangeMeta,
          verseRange.isAcceptableOrUnknown(
              data['verse_range']!, _verseRangeMeta));
    } else if (isInserting) {
      context.missing(_verseRangeMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  QuranLineData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return QuranLineData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      pageNumber: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}page_number'])!,
      type: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}type'])!,
      verseRange: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}verse_range'])!,
    );
  }

  @override
  $QuranLineTable createAlias(String alias) {
    return $QuranLineTable(attachedDatabase, alias);
  }
}

class QuranLineData extends DataClass implements Insertable<QuranLineData> {
  final int id;
  final int pageNumber;
  final String type;
  final String verseRange;
  const QuranLineData(
      {required this.id,
      required this.pageNumber,
      required this.type,
      required this.verseRange});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['page_number'] = Variable<int>(pageNumber);
    map['type'] = Variable<String>(type);
    map['verse_range'] = Variable<String>(verseRange);
    return map;
  }

  QuranLineCompanion toCompanion(bool nullToAbsent) {
    return QuranLineCompanion(
      id: Value(id),
      pageNumber: Value(pageNumber),
      type: Value(type),
      verseRange: Value(verseRange),
    );
  }

  factory QuranLineData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return QuranLineData(
      id: serializer.fromJson<int>(json['id']),
      pageNumber: serializer.fromJson<int>(json['pageNumber']),
      type: serializer.fromJson<String>(json['type']),
      verseRange: serializer.fromJson<String>(json['verseRange']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'pageNumber': serializer.toJson<int>(pageNumber),
      'type': serializer.toJson<String>(type),
      'verseRange': serializer.toJson<String>(verseRange),
    };
  }

  QuranLineData copyWith(
          {int? id, int? pageNumber, String? type, String? verseRange}) =>
      QuranLineData(
        id: id ?? this.id,
        pageNumber: pageNumber ?? this.pageNumber,
        type: type ?? this.type,
        verseRange: verseRange ?? this.verseRange,
      );
  QuranLineData copyWithCompanion(QuranLineCompanion data) {
    return QuranLineData(
      id: data.id.present ? data.id.value : this.id,
      pageNumber:
          data.pageNumber.present ? data.pageNumber.value : this.pageNumber,
      type: data.type.present ? data.type.value : this.type,
      verseRange:
          data.verseRange.present ? data.verseRange.value : this.verseRange,
    );
  }

  @override
  String toString() {
    return (StringBuffer('QuranLineData(')
          ..write('id: $id, ')
          ..write('pageNumber: $pageNumber, ')
          ..write('type: $type, ')
          ..write('verseRange: $verseRange')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, pageNumber, type, verseRange);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is QuranLineData &&
          other.id == this.id &&
          other.pageNumber == this.pageNumber &&
          other.type == this.type &&
          other.verseRange == this.verseRange);
}

class QuranLineCompanion extends UpdateCompanion<QuranLineData> {
  final Value<int> id;
  final Value<int> pageNumber;
  final Value<String> type;
  final Value<String> verseRange;
  const QuranLineCompanion({
    this.id = const Value.absent(),
    this.pageNumber = const Value.absent(),
    this.type = const Value.absent(),
    this.verseRange = const Value.absent(),
  });
  QuranLineCompanion.insert({
    this.id = const Value.absent(),
    required int pageNumber,
    required String type,
    required String verseRange,
  })  : pageNumber = Value(pageNumber),
        type = Value(type),
        verseRange = Value(verseRange);
  static Insertable<QuranLineData> custom({
    Expression<int>? id,
    Expression<int>? pageNumber,
    Expression<String>? type,
    Expression<String>? verseRange,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (pageNumber != null) 'page_number': pageNumber,
      if (type != null) 'type': type,
      if (verseRange != null) 'verse_range': verseRange,
    });
  }

  QuranLineCompanion copyWith(
      {Value<int>? id,
      Value<int>? pageNumber,
      Value<String>? type,
      Value<String>? verseRange}) {
    return QuranLineCompanion(
      id: id ?? this.id,
      pageNumber: pageNumber ?? this.pageNumber,
      type: type ?? this.type,
      verseRange: verseRange ?? this.verseRange,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (pageNumber.present) {
      map['page_number'] = Variable<int>(pageNumber.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (verseRange.present) {
      map['verse_range'] = Variable<String>(verseRange.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('QuranLineCompanion(')
          ..write('id: $id, ')
          ..write('pageNumber: $pageNumber, ')
          ..write('type: $type, ')
          ..write('verseRange: $verseRange')
          ..write(')'))
        .toString();
  }
}

class $QuranLineWordTable extends QuranLineWord
    with TableInfo<$QuranLineWordTable, QuranLineWordData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $QuranLineWordTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _locationMeta =
      const VerificationMeta('location');
  @override
  late final GeneratedColumn<String> location = GeneratedColumn<String>(
      'location', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _wordMeta = const VerificationMeta('word');
  @override
  late final GeneratedColumn<String> word = GeneratedColumn<String>(
      'word', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _qocV1Meta = const VerificationMeta('qocV1');
  @override
  late final GeneratedColumn<String> qocV1 = GeneratedColumn<String>(
      'qoc_v1', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _qocV2Meta = const VerificationMeta('qocV2');
  @override
  late final GeneratedColumn<String> qocV2 = GeneratedColumn<String>(
      'qoc_v2', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _lineIdMeta = const VerificationMeta('lineId');
  @override
  late final GeneratedColumn<int> lineId = GeneratedColumn<int>(
      'line_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, location, word, qocV1, qocV2, lineId];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'quran_line_word';
  @override
  VerificationContext validateIntegrity(Insertable<QuranLineWordData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('location')) {
      context.handle(_locationMeta,
          location.isAcceptableOrUnknown(data['location']!, _locationMeta));
    } else if (isInserting) {
      context.missing(_locationMeta);
    }
    if (data.containsKey('word')) {
      context.handle(
          _wordMeta, word.isAcceptableOrUnknown(data['word']!, _wordMeta));
    } else if (isInserting) {
      context.missing(_wordMeta);
    }
    if (data.containsKey('qoc_v1')) {
      context.handle(
          _qocV1Meta, qocV1.isAcceptableOrUnknown(data['qoc_v1']!, _qocV1Meta));
    } else if (isInserting) {
      context.missing(_qocV1Meta);
    }
    if (data.containsKey('qoc_v2')) {
      context.handle(
          _qocV2Meta, qocV2.isAcceptableOrUnknown(data['qoc_v2']!, _qocV2Meta));
    } else if (isInserting) {
      context.missing(_qocV2Meta);
    }
    if (data.containsKey('line_id')) {
      context.handle(_lineIdMeta,
          lineId.isAcceptableOrUnknown(data['line_id']!, _lineIdMeta));
    } else if (isInserting) {
      context.missing(_lineIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  QuranLineWordData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return QuranLineWordData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      location: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}location'])!,
      word: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}word'])!,
      qocV1: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}qoc_v1'])!,
      qocV2: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}qoc_v2'])!,
      lineId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}line_id'])!,
    );
  }

  @override
  $QuranLineWordTable createAlias(String alias) {
    return $QuranLineWordTable(attachedDatabase, alias);
  }
}

class QuranLineWordData extends DataClass
    implements Insertable<QuranLineWordData> {
  final int id;
  final String location;
  final String word;
  final String qocV1;
  final String qocV2;
  final int lineId;
  const QuranLineWordData(
      {required this.id,
      required this.location,
      required this.word,
      required this.qocV1,
      required this.qocV2,
      required this.lineId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['location'] = Variable<String>(location);
    map['word'] = Variable<String>(word);
    map['qoc_v1'] = Variable<String>(qocV1);
    map['qoc_v2'] = Variable<String>(qocV2);
    map['line_id'] = Variable<int>(lineId);
    return map;
  }

  QuranLineWordCompanion toCompanion(bool nullToAbsent) {
    return QuranLineWordCompanion(
      id: Value(id),
      location: Value(location),
      word: Value(word),
      qocV1: Value(qocV1),
      qocV2: Value(qocV2),
      lineId: Value(lineId),
    );
  }

  factory QuranLineWordData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return QuranLineWordData(
      id: serializer.fromJson<int>(json['id']),
      location: serializer.fromJson<String>(json['location']),
      word: serializer.fromJson<String>(json['word']),
      qocV1: serializer.fromJson<String>(json['qocV1']),
      qocV2: serializer.fromJson<String>(json['qocV2']),
      lineId: serializer.fromJson<int>(json['lineId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'location': serializer.toJson<String>(location),
      'word': serializer.toJson<String>(word),
      'qocV1': serializer.toJson<String>(qocV1),
      'qocV2': serializer.toJson<String>(qocV2),
      'lineId': serializer.toJson<int>(lineId),
    };
  }

  QuranLineWordData copyWith(
          {int? id,
          String? location,
          String? word,
          String? qocV1,
          String? qocV2,
          int? lineId}) =>
      QuranLineWordData(
        id: id ?? this.id,
        location: location ?? this.location,
        word: word ?? this.word,
        qocV1: qocV1 ?? this.qocV1,
        qocV2: qocV2 ?? this.qocV2,
        lineId: lineId ?? this.lineId,
      );
  QuranLineWordData copyWithCompanion(QuranLineWordCompanion data) {
    return QuranLineWordData(
      id: data.id.present ? data.id.value : this.id,
      location: data.location.present ? data.location.value : this.location,
      word: data.word.present ? data.word.value : this.word,
      qocV1: data.qocV1.present ? data.qocV1.value : this.qocV1,
      qocV2: data.qocV2.present ? data.qocV2.value : this.qocV2,
      lineId: data.lineId.present ? data.lineId.value : this.lineId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('QuranLineWordData(')
          ..write('id: $id, ')
          ..write('location: $location, ')
          ..write('word: $word, ')
          ..write('qocV1: $qocV1, ')
          ..write('qocV2: $qocV2, ')
          ..write('lineId: $lineId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, location, word, qocV1, qocV2, lineId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is QuranLineWordData &&
          other.id == this.id &&
          other.location == this.location &&
          other.word == this.word &&
          other.qocV1 == this.qocV1 &&
          other.qocV2 == this.qocV2 &&
          other.lineId == this.lineId);
}

class QuranLineWordCompanion extends UpdateCompanion<QuranLineWordData> {
  final Value<int> id;
  final Value<String> location;
  final Value<String> word;
  final Value<String> qocV1;
  final Value<String> qocV2;
  final Value<int> lineId;
  const QuranLineWordCompanion({
    this.id = const Value.absent(),
    this.location = const Value.absent(),
    this.word = const Value.absent(),
    this.qocV1 = const Value.absent(),
    this.qocV2 = const Value.absent(),
    this.lineId = const Value.absent(),
  });
  QuranLineWordCompanion.insert({
    this.id = const Value.absent(),
    required String location,
    required String word,
    required String qocV1,
    required String qocV2,
    required int lineId,
  })  : location = Value(location),
        word = Value(word),
        qocV1 = Value(qocV1),
        qocV2 = Value(qocV2),
        lineId = Value(lineId);
  static Insertable<QuranLineWordData> custom({
    Expression<int>? id,
    Expression<String>? location,
    Expression<String>? word,
    Expression<String>? qocV1,
    Expression<String>? qocV2,
    Expression<int>? lineId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (location != null) 'location': location,
      if (word != null) 'word': word,
      if (qocV1 != null) 'qoc_v1': qocV1,
      if (qocV2 != null) 'qoc_v2': qocV2,
      if (lineId != null) 'line_id': lineId,
    });
  }

  QuranLineWordCompanion copyWith(
      {Value<int>? id,
      Value<String>? location,
      Value<String>? word,
      Value<String>? qocV1,
      Value<String>? qocV2,
      Value<int>? lineId}) {
    return QuranLineWordCompanion(
      id: id ?? this.id,
      location: location ?? this.location,
      word: word ?? this.word,
      qocV1: qocV1 ?? this.qocV1,
      qocV2: qocV2 ?? this.qocV2,
      lineId: lineId ?? this.lineId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (location.present) {
      map['location'] = Variable<String>(location.value);
    }
    if (word.present) {
      map['word'] = Variable<String>(word.value);
    }
    if (qocV1.present) {
      map['qoc_v1'] = Variable<String>(qocV1.value);
    }
    if (qocV2.present) {
      map['qoc_v2'] = Variable<String>(qocV2.value);
    }
    if (lineId.present) {
      map['line_id'] = Variable<int>(lineId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('QuranLineWordCompanion(')
          ..write('id: $id, ')
          ..write('location: $location, ')
          ..write('word: $word, ')
          ..write('qocV1: $qocV1, ')
          ..write('qocV2: $qocV2, ')
          ..write('lineId: $lineId')
          ..write(')'))
        .toString();
  }
}

class $SurahJuzTable extends SurahJuz
    with TableInfo<$SurahJuzTable, SurahJuzData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SurahJuzTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _surahNumberMeta =
      const VerificationMeta('surahNumber');
  @override
  late final GeneratedColumn<int> surahNumber = GeneratedColumn<int>(
      'surah_number', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _juzNumberMeta =
      const VerificationMeta('juzNumber');
  @override
  late final GeneratedColumn<int> juzNumber = GeneratedColumn<int>(
      'juz_number', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _startAyahMeta =
      const VerificationMeta('startAyah');
  @override
  late final GeneratedColumn<int> startAyah = GeneratedColumn<int>(
      'start_ayah', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _endAyahMeta =
      const VerificationMeta('endAyah');
  @override
  late final GeneratedColumn<int> endAyah = GeneratedColumn<int>(
      'end_ayah', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [surahNumber, juzNumber, startAyah, endAyah];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'surah_juz';
  @override
  VerificationContext validateIntegrity(Insertable<SurahJuzData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('surah_number')) {
      context.handle(
          _surahNumberMeta,
          surahNumber.isAcceptableOrUnknown(
              data['surah_number']!, _surahNumberMeta));
    } else if (isInserting) {
      context.missing(_surahNumberMeta);
    }
    if (data.containsKey('juz_number')) {
      context.handle(_juzNumberMeta,
          juzNumber.isAcceptableOrUnknown(data['juz_number']!, _juzNumberMeta));
    } else if (isInserting) {
      context.missing(_juzNumberMeta);
    }
    if (data.containsKey('start_ayah')) {
      context.handle(_startAyahMeta,
          startAyah.isAcceptableOrUnknown(data['start_ayah']!, _startAyahMeta));
    }
    if (data.containsKey('end_ayah')) {
      context.handle(_endAyahMeta,
          endAyah.isAcceptableOrUnknown(data['end_ayah']!, _endAyahMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {surahNumber, juzNumber};
  @override
  SurahJuzData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SurahJuzData(
      surahNumber: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}surah_number'])!,
      juzNumber: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}juz_number'])!,
      startAyah: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}start_ayah']),
      endAyah: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}end_ayah']),
    );
  }

  @override
  $SurahJuzTable createAlias(String alias) {
    return $SurahJuzTable(attachedDatabase, alias);
  }
}

class SurahJuzData extends DataClass implements Insertable<SurahJuzData> {
  final int surahNumber;
  final int juzNumber;
  final int? startAyah;
  final int? endAyah;
  const SurahJuzData(
      {required this.surahNumber,
      required this.juzNumber,
      this.startAyah,
      this.endAyah});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['surah_number'] = Variable<int>(surahNumber);
    map['juz_number'] = Variable<int>(juzNumber);
    if (!nullToAbsent || startAyah != null) {
      map['start_ayah'] = Variable<int>(startAyah);
    }
    if (!nullToAbsent || endAyah != null) {
      map['end_ayah'] = Variable<int>(endAyah);
    }
    return map;
  }

  SurahJuzCompanion toCompanion(bool nullToAbsent) {
    return SurahJuzCompanion(
      surahNumber: Value(surahNumber),
      juzNumber: Value(juzNumber),
      startAyah: startAyah == null && nullToAbsent
          ? const Value.absent()
          : Value(startAyah),
      endAyah: endAyah == null && nullToAbsent
          ? const Value.absent()
          : Value(endAyah),
    );
  }

  factory SurahJuzData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SurahJuzData(
      surahNumber: serializer.fromJson<int>(json['surahNumber']),
      juzNumber: serializer.fromJson<int>(json['juzNumber']),
      startAyah: serializer.fromJson<int?>(json['startAyah']),
      endAyah: serializer.fromJson<int?>(json['endAyah']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'surahNumber': serializer.toJson<int>(surahNumber),
      'juzNumber': serializer.toJson<int>(juzNumber),
      'startAyah': serializer.toJson<int?>(startAyah),
      'endAyah': serializer.toJson<int?>(endAyah),
    };
  }

  SurahJuzData copyWith(
          {int? surahNumber,
          int? juzNumber,
          Value<int?> startAyah = const Value.absent(),
          Value<int?> endAyah = const Value.absent()}) =>
      SurahJuzData(
        surahNumber: surahNumber ?? this.surahNumber,
        juzNumber: juzNumber ?? this.juzNumber,
        startAyah: startAyah.present ? startAyah.value : this.startAyah,
        endAyah: endAyah.present ? endAyah.value : this.endAyah,
      );
  SurahJuzData copyWithCompanion(SurahJuzCompanion data) {
    return SurahJuzData(
      surahNumber:
          data.surahNumber.present ? data.surahNumber.value : this.surahNumber,
      juzNumber: data.juzNumber.present ? data.juzNumber.value : this.juzNumber,
      startAyah: data.startAyah.present ? data.startAyah.value : this.startAyah,
      endAyah: data.endAyah.present ? data.endAyah.value : this.endAyah,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SurahJuzData(')
          ..write('surahNumber: $surahNumber, ')
          ..write('juzNumber: $juzNumber, ')
          ..write('startAyah: $startAyah, ')
          ..write('endAyah: $endAyah')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(surahNumber, juzNumber, startAyah, endAyah);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SurahJuzData &&
          other.surahNumber == this.surahNumber &&
          other.juzNumber == this.juzNumber &&
          other.startAyah == this.startAyah &&
          other.endAyah == this.endAyah);
}

class SurahJuzCompanion extends UpdateCompanion<SurahJuzData> {
  final Value<int> surahNumber;
  final Value<int> juzNumber;
  final Value<int?> startAyah;
  final Value<int?> endAyah;
  final Value<int> rowid;
  const SurahJuzCompanion({
    this.surahNumber = const Value.absent(),
    this.juzNumber = const Value.absent(),
    this.startAyah = const Value.absent(),
    this.endAyah = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  SurahJuzCompanion.insert({
    required int surahNumber,
    required int juzNumber,
    this.startAyah = const Value.absent(),
    this.endAyah = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : surahNumber = Value(surahNumber),
        juzNumber = Value(juzNumber);
  static Insertable<SurahJuzData> custom({
    Expression<int>? surahNumber,
    Expression<int>? juzNumber,
    Expression<int>? startAyah,
    Expression<int>? endAyah,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (surahNumber != null) 'surah_number': surahNumber,
      if (juzNumber != null) 'juz_number': juzNumber,
      if (startAyah != null) 'start_ayah': startAyah,
      if (endAyah != null) 'end_ayah': endAyah,
      if (rowid != null) 'rowid': rowid,
    });
  }

  SurahJuzCompanion copyWith(
      {Value<int>? surahNumber,
      Value<int>? juzNumber,
      Value<int?>? startAyah,
      Value<int?>? endAyah,
      Value<int>? rowid}) {
    return SurahJuzCompanion(
      surahNumber: surahNumber ?? this.surahNumber,
      juzNumber: juzNumber ?? this.juzNumber,
      startAyah: startAyah ?? this.startAyah,
      endAyah: endAyah ?? this.endAyah,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (surahNumber.present) {
      map['surah_number'] = Variable<int>(surahNumber.value);
    }
    if (juzNumber.present) {
      map['juz_number'] = Variable<int>(juzNumber.value);
    }
    if (startAyah.present) {
      map['start_ayah'] = Variable<int>(startAyah.value);
    }
    if (endAyah.present) {
      map['end_ayah'] = Variable<int>(endAyah.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SurahJuzCompanion(')
          ..write('surahNumber: $surahNumber, ')
          ..write('juzNumber: $juzNumber, ')
          ..write('startAyah: $startAyah, ')
          ..write('endAyah: $endAyah, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$QuranDatabase extends GeneratedDatabase {
  _$QuranDatabase(QueryExecutor e) : super(e);
  $QuranDatabaseManager get managers => $QuranDatabaseManager(this);
  late final $SurahTable surah = $SurahTable(this);
  late final $AyahsTable ayahs = $AyahsTable(this);
  late final $JuzTable juz = $JuzTable(this);
  late final $QuranLineTable quranLine = $QuranLineTable(this);
  late final $QuranLineWordTable quranLineWord = $QuranLineWordTable(this);
  late final $SurahJuzTable surahJuz = $SurahJuzTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [surah, ayahs, juz, quranLine, quranLineWord, surahJuz];
}

typedef $$SurahTableCreateCompanionBuilder = SurahCompanion Function({
  Value<int> number,
  required String nameAr,
  required String nameEn,
  required String nameRu,
  required String nameUzLat,
  required String nameUzCyr,
  required String nameEnMeaning,
  required String nameRuMeaning,
  required String nameUzLatMeaning,
  required String nameUzCyrMeaning,
  required int versesCount,
  required int pageStart,
});
typedef $$SurahTableUpdateCompanionBuilder = SurahCompanion Function({
  Value<int> number,
  Value<String> nameAr,
  Value<String> nameEn,
  Value<String> nameRu,
  Value<String> nameUzLat,
  Value<String> nameUzCyr,
  Value<String> nameEnMeaning,
  Value<String> nameRuMeaning,
  Value<String> nameUzLatMeaning,
  Value<String> nameUzCyrMeaning,
  Value<int> versesCount,
  Value<int> pageStart,
});

class $$SurahTableFilterComposer
    extends Composer<_$QuranDatabase, $SurahTable> {
  $$SurahTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get number => $composableBuilder(
      column: $table.number, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get nameAr => $composableBuilder(
      column: $table.nameAr, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get nameEn => $composableBuilder(
      column: $table.nameEn, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get nameRu => $composableBuilder(
      column: $table.nameRu, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get nameUzLat => $composableBuilder(
      column: $table.nameUzLat, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get nameUzCyr => $composableBuilder(
      column: $table.nameUzCyr, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get nameEnMeaning => $composableBuilder(
      column: $table.nameEnMeaning, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get nameRuMeaning => $composableBuilder(
      column: $table.nameRuMeaning, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get nameUzLatMeaning => $composableBuilder(
      column: $table.nameUzLatMeaning,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get nameUzCyrMeaning => $composableBuilder(
      column: $table.nameUzCyrMeaning,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get versesCount => $composableBuilder(
      column: $table.versesCount, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get pageStart => $composableBuilder(
      column: $table.pageStart, builder: (column) => ColumnFilters(column));
}

class $$SurahTableOrderingComposer
    extends Composer<_$QuranDatabase, $SurahTable> {
  $$SurahTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get number => $composableBuilder(
      column: $table.number, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get nameAr => $composableBuilder(
      column: $table.nameAr, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get nameEn => $composableBuilder(
      column: $table.nameEn, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get nameRu => $composableBuilder(
      column: $table.nameRu, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get nameUzLat => $composableBuilder(
      column: $table.nameUzLat, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get nameUzCyr => $composableBuilder(
      column: $table.nameUzCyr, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get nameEnMeaning => $composableBuilder(
      column: $table.nameEnMeaning,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get nameRuMeaning => $composableBuilder(
      column: $table.nameRuMeaning,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get nameUzLatMeaning => $composableBuilder(
      column: $table.nameUzLatMeaning,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get nameUzCyrMeaning => $composableBuilder(
      column: $table.nameUzCyrMeaning,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get versesCount => $composableBuilder(
      column: $table.versesCount, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get pageStart => $composableBuilder(
      column: $table.pageStart, builder: (column) => ColumnOrderings(column));
}

class $$SurahTableAnnotationComposer
    extends Composer<_$QuranDatabase, $SurahTable> {
  $$SurahTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get number =>
      $composableBuilder(column: $table.number, builder: (column) => column);

  GeneratedColumn<String> get nameAr =>
      $composableBuilder(column: $table.nameAr, builder: (column) => column);

  GeneratedColumn<String> get nameEn =>
      $composableBuilder(column: $table.nameEn, builder: (column) => column);

  GeneratedColumn<String> get nameRu =>
      $composableBuilder(column: $table.nameRu, builder: (column) => column);

  GeneratedColumn<String> get nameUzLat =>
      $composableBuilder(column: $table.nameUzLat, builder: (column) => column);

  GeneratedColumn<String> get nameUzCyr =>
      $composableBuilder(column: $table.nameUzCyr, builder: (column) => column);

  GeneratedColumn<String> get nameEnMeaning => $composableBuilder(
      column: $table.nameEnMeaning, builder: (column) => column);

  GeneratedColumn<String> get nameRuMeaning => $composableBuilder(
      column: $table.nameRuMeaning, builder: (column) => column);

  GeneratedColumn<String> get nameUzLatMeaning => $composableBuilder(
      column: $table.nameUzLatMeaning, builder: (column) => column);

  GeneratedColumn<String> get nameUzCyrMeaning => $composableBuilder(
      column: $table.nameUzCyrMeaning, builder: (column) => column);

  GeneratedColumn<int> get versesCount => $composableBuilder(
      column: $table.versesCount, builder: (column) => column);

  GeneratedColumn<int> get pageStart =>
      $composableBuilder(column: $table.pageStart, builder: (column) => column);
}

class $$SurahTableTableManager extends RootTableManager<
    _$QuranDatabase,
    $SurahTable,
    SurahData,
    $$SurahTableFilterComposer,
    $$SurahTableOrderingComposer,
    $$SurahTableAnnotationComposer,
    $$SurahTableCreateCompanionBuilder,
    $$SurahTableUpdateCompanionBuilder,
    (SurahData, BaseReferences<_$QuranDatabase, $SurahTable, SurahData>),
    SurahData,
    PrefetchHooks Function()> {
  $$SurahTableTableManager(_$QuranDatabase db, $SurahTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SurahTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SurahTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SurahTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> number = const Value.absent(),
            Value<String> nameAr = const Value.absent(),
            Value<String> nameEn = const Value.absent(),
            Value<String> nameRu = const Value.absent(),
            Value<String> nameUzLat = const Value.absent(),
            Value<String> nameUzCyr = const Value.absent(),
            Value<String> nameEnMeaning = const Value.absent(),
            Value<String> nameRuMeaning = const Value.absent(),
            Value<String> nameUzLatMeaning = const Value.absent(),
            Value<String> nameUzCyrMeaning = const Value.absent(),
            Value<int> versesCount = const Value.absent(),
            Value<int> pageStart = const Value.absent(),
          }) =>
              SurahCompanion(
            number: number,
            nameAr: nameAr,
            nameEn: nameEn,
            nameRu: nameRu,
            nameUzLat: nameUzLat,
            nameUzCyr: nameUzCyr,
            nameEnMeaning: nameEnMeaning,
            nameRuMeaning: nameRuMeaning,
            nameUzLatMeaning: nameUzLatMeaning,
            nameUzCyrMeaning: nameUzCyrMeaning,
            versesCount: versesCount,
            pageStart: pageStart,
          ),
          createCompanionCallback: ({
            Value<int> number = const Value.absent(),
            required String nameAr,
            required String nameEn,
            required String nameRu,
            required String nameUzLat,
            required String nameUzCyr,
            required String nameEnMeaning,
            required String nameRuMeaning,
            required String nameUzLatMeaning,
            required String nameUzCyrMeaning,
            required int versesCount,
            required int pageStart,
          }) =>
              SurahCompanion.insert(
            number: number,
            nameAr: nameAr,
            nameEn: nameEn,
            nameRu: nameRu,
            nameUzLat: nameUzLat,
            nameUzCyr: nameUzCyr,
            nameEnMeaning: nameEnMeaning,
            nameRuMeaning: nameRuMeaning,
            nameUzLatMeaning: nameUzLatMeaning,
            nameUzCyrMeaning: nameUzCyrMeaning,
            versesCount: versesCount,
            pageStart: pageStart,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$SurahTableProcessedTableManager = ProcessedTableManager<
    _$QuranDatabase,
    $SurahTable,
    SurahData,
    $$SurahTableFilterComposer,
    $$SurahTableOrderingComposer,
    $$SurahTableAnnotationComposer,
    $$SurahTableCreateCompanionBuilder,
    $$SurahTableUpdateCompanionBuilder,
    (SurahData, BaseReferences<_$QuranDatabase, $SurahTable, SurahData>),
    SurahData,
    PrefetchHooks Function()>;
typedef $$AyahsTableCreateCompanionBuilder = AyahsCompanion Function({
  Value<int> id,
  required int surahId,
  required int ayahNumber,
  required String textEn,
  required String textRu,
  required String textUzLat,
  required String textUzCyr,
});
typedef $$AyahsTableUpdateCompanionBuilder = AyahsCompanion Function({
  Value<int> id,
  Value<int> surahId,
  Value<int> ayahNumber,
  Value<String> textEn,
  Value<String> textRu,
  Value<String> textUzLat,
  Value<String> textUzCyr,
});

class $$AyahsTableFilterComposer
    extends Composer<_$QuranDatabase, $AyahsTable> {
  $$AyahsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get surahId => $composableBuilder(
      column: $table.surahId, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get ayahNumber => $composableBuilder(
      column: $table.ayahNumber, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get textEn => $composableBuilder(
      column: $table.textEn, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get textRu => $composableBuilder(
      column: $table.textRu, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get textUzLat => $composableBuilder(
      column: $table.textUzLat, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get textUzCyr => $composableBuilder(
      column: $table.textUzCyr, builder: (column) => ColumnFilters(column));
}

class $$AyahsTableOrderingComposer
    extends Composer<_$QuranDatabase, $AyahsTable> {
  $$AyahsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get surahId => $composableBuilder(
      column: $table.surahId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get ayahNumber => $composableBuilder(
      column: $table.ayahNumber, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get textEn => $composableBuilder(
      column: $table.textEn, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get textRu => $composableBuilder(
      column: $table.textRu, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get textUzLat => $composableBuilder(
      column: $table.textUzLat, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get textUzCyr => $composableBuilder(
      column: $table.textUzCyr, builder: (column) => ColumnOrderings(column));
}

class $$AyahsTableAnnotationComposer
    extends Composer<_$QuranDatabase, $AyahsTable> {
  $$AyahsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get surahId =>
      $composableBuilder(column: $table.surahId, builder: (column) => column);

  GeneratedColumn<int> get ayahNumber => $composableBuilder(
      column: $table.ayahNumber, builder: (column) => column);

  GeneratedColumn<String> get textEn =>
      $composableBuilder(column: $table.textEn, builder: (column) => column);

  GeneratedColumn<String> get textRu =>
      $composableBuilder(column: $table.textRu, builder: (column) => column);

  GeneratedColumn<String> get textUzLat =>
      $composableBuilder(column: $table.textUzLat, builder: (column) => column);

  GeneratedColumn<String> get textUzCyr =>
      $composableBuilder(column: $table.textUzCyr, builder: (column) => column);
}

class $$AyahsTableTableManager extends RootTableManager<
    _$QuranDatabase,
    $AyahsTable,
    Ayah,
    $$AyahsTableFilterComposer,
    $$AyahsTableOrderingComposer,
    $$AyahsTableAnnotationComposer,
    $$AyahsTableCreateCompanionBuilder,
    $$AyahsTableUpdateCompanionBuilder,
    (Ayah, BaseReferences<_$QuranDatabase, $AyahsTable, Ayah>),
    Ayah,
    PrefetchHooks Function()> {
  $$AyahsTableTableManager(_$QuranDatabase db, $AyahsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$AyahsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$AyahsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$AyahsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> surahId = const Value.absent(),
            Value<int> ayahNumber = const Value.absent(),
            Value<String> textEn = const Value.absent(),
            Value<String> textRu = const Value.absent(),
            Value<String> textUzLat = const Value.absent(),
            Value<String> textUzCyr = const Value.absent(),
          }) =>
              AyahsCompanion(
            id: id,
            surahId: surahId,
            ayahNumber: ayahNumber,
            textEn: textEn,
            textRu: textRu,
            textUzLat: textUzLat,
            textUzCyr: textUzCyr,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int surahId,
            required int ayahNumber,
            required String textEn,
            required String textRu,
            required String textUzLat,
            required String textUzCyr,
          }) =>
              AyahsCompanion.insert(
            id: id,
            surahId: surahId,
            ayahNumber: ayahNumber,
            textEn: textEn,
            textRu: textRu,
            textUzLat: textUzLat,
            textUzCyr: textUzCyr,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$AyahsTableProcessedTableManager = ProcessedTableManager<
    _$QuranDatabase,
    $AyahsTable,
    Ayah,
    $$AyahsTableFilterComposer,
    $$AyahsTableOrderingComposer,
    $$AyahsTableAnnotationComposer,
    $$AyahsTableCreateCompanionBuilder,
    $$AyahsTableUpdateCompanionBuilder,
    (Ayah, BaseReferences<_$QuranDatabase, $AyahsTable, Ayah>),
    Ayah,
    PrefetchHooks Function()>;
typedef $$JuzTableCreateCompanionBuilder = JuzCompanion Function({
  Value<int> number,
  required String nameAr,
  required String nameEn,
  required int startSurahNumber,
  required int startAyahNumber,
  required int endSurahNumber,
  required int endAyahNumber,
});
typedef $$JuzTableUpdateCompanionBuilder = JuzCompanion Function({
  Value<int> number,
  Value<String> nameAr,
  Value<String> nameEn,
  Value<int> startSurahNumber,
  Value<int> startAyahNumber,
  Value<int> endSurahNumber,
  Value<int> endAyahNumber,
});

class $$JuzTableFilterComposer extends Composer<_$QuranDatabase, $JuzTable> {
  $$JuzTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get number => $composableBuilder(
      column: $table.number, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get nameAr => $composableBuilder(
      column: $table.nameAr, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get nameEn => $composableBuilder(
      column: $table.nameEn, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get startSurahNumber => $composableBuilder(
      column: $table.startSurahNumber,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get startAyahNumber => $composableBuilder(
      column: $table.startAyahNumber,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get endSurahNumber => $composableBuilder(
      column: $table.endSurahNumber,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get endAyahNumber => $composableBuilder(
      column: $table.endAyahNumber, builder: (column) => ColumnFilters(column));
}

class $$JuzTableOrderingComposer extends Composer<_$QuranDatabase, $JuzTable> {
  $$JuzTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get number => $composableBuilder(
      column: $table.number, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get nameAr => $composableBuilder(
      column: $table.nameAr, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get nameEn => $composableBuilder(
      column: $table.nameEn, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get startSurahNumber => $composableBuilder(
      column: $table.startSurahNumber,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get startAyahNumber => $composableBuilder(
      column: $table.startAyahNumber,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get endSurahNumber => $composableBuilder(
      column: $table.endSurahNumber,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get endAyahNumber => $composableBuilder(
      column: $table.endAyahNumber,
      builder: (column) => ColumnOrderings(column));
}

class $$JuzTableAnnotationComposer
    extends Composer<_$QuranDatabase, $JuzTable> {
  $$JuzTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get number =>
      $composableBuilder(column: $table.number, builder: (column) => column);

  GeneratedColumn<String> get nameAr =>
      $composableBuilder(column: $table.nameAr, builder: (column) => column);

  GeneratedColumn<String> get nameEn =>
      $composableBuilder(column: $table.nameEn, builder: (column) => column);

  GeneratedColumn<int> get startSurahNumber => $composableBuilder(
      column: $table.startSurahNumber, builder: (column) => column);

  GeneratedColumn<int> get startAyahNumber => $composableBuilder(
      column: $table.startAyahNumber, builder: (column) => column);

  GeneratedColumn<int> get endSurahNumber => $composableBuilder(
      column: $table.endSurahNumber, builder: (column) => column);

  GeneratedColumn<int> get endAyahNumber => $composableBuilder(
      column: $table.endAyahNumber, builder: (column) => column);
}

class $$JuzTableTableManager extends RootTableManager<
    _$QuranDatabase,
    $JuzTable,
    JuzData,
    $$JuzTableFilterComposer,
    $$JuzTableOrderingComposer,
    $$JuzTableAnnotationComposer,
    $$JuzTableCreateCompanionBuilder,
    $$JuzTableUpdateCompanionBuilder,
    (JuzData, BaseReferences<_$QuranDatabase, $JuzTable, JuzData>),
    JuzData,
    PrefetchHooks Function()> {
  $$JuzTableTableManager(_$QuranDatabase db, $JuzTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$JuzTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$JuzTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$JuzTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> number = const Value.absent(),
            Value<String> nameAr = const Value.absent(),
            Value<String> nameEn = const Value.absent(),
            Value<int> startSurahNumber = const Value.absent(),
            Value<int> startAyahNumber = const Value.absent(),
            Value<int> endSurahNumber = const Value.absent(),
            Value<int> endAyahNumber = const Value.absent(),
          }) =>
              JuzCompanion(
            number: number,
            nameAr: nameAr,
            nameEn: nameEn,
            startSurahNumber: startSurahNumber,
            startAyahNumber: startAyahNumber,
            endSurahNumber: endSurahNumber,
            endAyahNumber: endAyahNumber,
          ),
          createCompanionCallback: ({
            Value<int> number = const Value.absent(),
            required String nameAr,
            required String nameEn,
            required int startSurahNumber,
            required int startAyahNumber,
            required int endSurahNumber,
            required int endAyahNumber,
          }) =>
              JuzCompanion.insert(
            number: number,
            nameAr: nameAr,
            nameEn: nameEn,
            startSurahNumber: startSurahNumber,
            startAyahNumber: startAyahNumber,
            endSurahNumber: endSurahNumber,
            endAyahNumber: endAyahNumber,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$JuzTableProcessedTableManager = ProcessedTableManager<
    _$QuranDatabase,
    $JuzTable,
    JuzData,
    $$JuzTableFilterComposer,
    $$JuzTableOrderingComposer,
    $$JuzTableAnnotationComposer,
    $$JuzTableCreateCompanionBuilder,
    $$JuzTableUpdateCompanionBuilder,
    (JuzData, BaseReferences<_$QuranDatabase, $JuzTable, JuzData>),
    JuzData,
    PrefetchHooks Function()>;
typedef $$QuranLineTableCreateCompanionBuilder = QuranLineCompanion Function({
  Value<int> id,
  required int pageNumber,
  required String type,
  required String verseRange,
});
typedef $$QuranLineTableUpdateCompanionBuilder = QuranLineCompanion Function({
  Value<int> id,
  Value<int> pageNumber,
  Value<String> type,
  Value<String> verseRange,
});

class $$QuranLineTableFilterComposer
    extends Composer<_$QuranDatabase, $QuranLineTable> {
  $$QuranLineTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get pageNumber => $composableBuilder(
      column: $table.pageNumber, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get type => $composableBuilder(
      column: $table.type, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get verseRange => $composableBuilder(
      column: $table.verseRange, builder: (column) => ColumnFilters(column));
}

class $$QuranLineTableOrderingComposer
    extends Composer<_$QuranDatabase, $QuranLineTable> {
  $$QuranLineTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get pageNumber => $composableBuilder(
      column: $table.pageNumber, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get type => $composableBuilder(
      column: $table.type, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get verseRange => $composableBuilder(
      column: $table.verseRange, builder: (column) => ColumnOrderings(column));
}

class $$QuranLineTableAnnotationComposer
    extends Composer<_$QuranDatabase, $QuranLineTable> {
  $$QuranLineTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get pageNumber => $composableBuilder(
      column: $table.pageNumber, builder: (column) => column);

  GeneratedColumn<String> get type =>
      $composableBuilder(column: $table.type, builder: (column) => column);

  GeneratedColumn<String> get verseRange => $composableBuilder(
      column: $table.verseRange, builder: (column) => column);
}

class $$QuranLineTableTableManager extends RootTableManager<
    _$QuranDatabase,
    $QuranLineTable,
    QuranLineData,
    $$QuranLineTableFilterComposer,
    $$QuranLineTableOrderingComposer,
    $$QuranLineTableAnnotationComposer,
    $$QuranLineTableCreateCompanionBuilder,
    $$QuranLineTableUpdateCompanionBuilder,
    (
      QuranLineData,
      BaseReferences<_$QuranDatabase, $QuranLineTable, QuranLineData>
    ),
    QuranLineData,
    PrefetchHooks Function()> {
  $$QuranLineTableTableManager(_$QuranDatabase db, $QuranLineTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$QuranLineTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$QuranLineTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$QuranLineTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> pageNumber = const Value.absent(),
            Value<String> type = const Value.absent(),
            Value<String> verseRange = const Value.absent(),
          }) =>
              QuranLineCompanion(
            id: id,
            pageNumber: pageNumber,
            type: type,
            verseRange: verseRange,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int pageNumber,
            required String type,
            required String verseRange,
          }) =>
              QuranLineCompanion.insert(
            id: id,
            pageNumber: pageNumber,
            type: type,
            verseRange: verseRange,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$QuranLineTableProcessedTableManager = ProcessedTableManager<
    _$QuranDatabase,
    $QuranLineTable,
    QuranLineData,
    $$QuranLineTableFilterComposer,
    $$QuranLineTableOrderingComposer,
    $$QuranLineTableAnnotationComposer,
    $$QuranLineTableCreateCompanionBuilder,
    $$QuranLineTableUpdateCompanionBuilder,
    (
      QuranLineData,
      BaseReferences<_$QuranDatabase, $QuranLineTable, QuranLineData>
    ),
    QuranLineData,
    PrefetchHooks Function()>;
typedef $$QuranLineWordTableCreateCompanionBuilder = QuranLineWordCompanion
    Function({
  Value<int> id,
  required String location,
  required String word,
  required String qocV1,
  required String qocV2,
  required int lineId,
});
typedef $$QuranLineWordTableUpdateCompanionBuilder = QuranLineWordCompanion
    Function({
  Value<int> id,
  Value<String> location,
  Value<String> word,
  Value<String> qocV1,
  Value<String> qocV2,
  Value<int> lineId,
});

class $$QuranLineWordTableFilterComposer
    extends Composer<_$QuranDatabase, $QuranLineWordTable> {
  $$QuranLineWordTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get location => $composableBuilder(
      column: $table.location, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get word => $composableBuilder(
      column: $table.word, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get qocV1 => $composableBuilder(
      column: $table.qocV1, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get qocV2 => $composableBuilder(
      column: $table.qocV2, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get lineId => $composableBuilder(
      column: $table.lineId, builder: (column) => ColumnFilters(column));
}

class $$QuranLineWordTableOrderingComposer
    extends Composer<_$QuranDatabase, $QuranLineWordTable> {
  $$QuranLineWordTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get location => $composableBuilder(
      column: $table.location, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get word => $composableBuilder(
      column: $table.word, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get qocV1 => $composableBuilder(
      column: $table.qocV1, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get qocV2 => $composableBuilder(
      column: $table.qocV2, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get lineId => $composableBuilder(
      column: $table.lineId, builder: (column) => ColumnOrderings(column));
}

class $$QuranLineWordTableAnnotationComposer
    extends Composer<_$QuranDatabase, $QuranLineWordTable> {
  $$QuranLineWordTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get location =>
      $composableBuilder(column: $table.location, builder: (column) => column);

  GeneratedColumn<String> get word =>
      $composableBuilder(column: $table.word, builder: (column) => column);

  GeneratedColumn<String> get qocV1 =>
      $composableBuilder(column: $table.qocV1, builder: (column) => column);

  GeneratedColumn<String> get qocV2 =>
      $composableBuilder(column: $table.qocV2, builder: (column) => column);

  GeneratedColumn<int> get lineId =>
      $composableBuilder(column: $table.lineId, builder: (column) => column);
}

class $$QuranLineWordTableTableManager extends RootTableManager<
    _$QuranDatabase,
    $QuranLineWordTable,
    QuranLineWordData,
    $$QuranLineWordTableFilterComposer,
    $$QuranLineWordTableOrderingComposer,
    $$QuranLineWordTableAnnotationComposer,
    $$QuranLineWordTableCreateCompanionBuilder,
    $$QuranLineWordTableUpdateCompanionBuilder,
    (
      QuranLineWordData,
      BaseReferences<_$QuranDatabase, $QuranLineWordTable, QuranLineWordData>
    ),
    QuranLineWordData,
    PrefetchHooks Function()> {
  $$QuranLineWordTableTableManager(
      _$QuranDatabase db, $QuranLineWordTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$QuranLineWordTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$QuranLineWordTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$QuranLineWordTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> location = const Value.absent(),
            Value<String> word = const Value.absent(),
            Value<String> qocV1 = const Value.absent(),
            Value<String> qocV2 = const Value.absent(),
            Value<int> lineId = const Value.absent(),
          }) =>
              QuranLineWordCompanion(
            id: id,
            location: location,
            word: word,
            qocV1: qocV1,
            qocV2: qocV2,
            lineId: lineId,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String location,
            required String word,
            required String qocV1,
            required String qocV2,
            required int lineId,
          }) =>
              QuranLineWordCompanion.insert(
            id: id,
            location: location,
            word: word,
            qocV1: qocV1,
            qocV2: qocV2,
            lineId: lineId,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$QuranLineWordTableProcessedTableManager = ProcessedTableManager<
    _$QuranDatabase,
    $QuranLineWordTable,
    QuranLineWordData,
    $$QuranLineWordTableFilterComposer,
    $$QuranLineWordTableOrderingComposer,
    $$QuranLineWordTableAnnotationComposer,
    $$QuranLineWordTableCreateCompanionBuilder,
    $$QuranLineWordTableUpdateCompanionBuilder,
    (
      QuranLineWordData,
      BaseReferences<_$QuranDatabase, $QuranLineWordTable, QuranLineWordData>
    ),
    QuranLineWordData,
    PrefetchHooks Function()>;
typedef $$SurahJuzTableCreateCompanionBuilder = SurahJuzCompanion Function({
  required int surahNumber,
  required int juzNumber,
  Value<int?> startAyah,
  Value<int?> endAyah,
  Value<int> rowid,
});
typedef $$SurahJuzTableUpdateCompanionBuilder = SurahJuzCompanion Function({
  Value<int> surahNumber,
  Value<int> juzNumber,
  Value<int?> startAyah,
  Value<int?> endAyah,
  Value<int> rowid,
});

class $$SurahJuzTableFilterComposer
    extends Composer<_$QuranDatabase, $SurahJuzTable> {
  $$SurahJuzTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get surahNumber => $composableBuilder(
      column: $table.surahNumber, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get juzNumber => $composableBuilder(
      column: $table.juzNumber, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get startAyah => $composableBuilder(
      column: $table.startAyah, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get endAyah => $composableBuilder(
      column: $table.endAyah, builder: (column) => ColumnFilters(column));
}

class $$SurahJuzTableOrderingComposer
    extends Composer<_$QuranDatabase, $SurahJuzTable> {
  $$SurahJuzTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get surahNumber => $composableBuilder(
      column: $table.surahNumber, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get juzNumber => $composableBuilder(
      column: $table.juzNumber, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get startAyah => $composableBuilder(
      column: $table.startAyah, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get endAyah => $composableBuilder(
      column: $table.endAyah, builder: (column) => ColumnOrderings(column));
}

class $$SurahJuzTableAnnotationComposer
    extends Composer<_$QuranDatabase, $SurahJuzTable> {
  $$SurahJuzTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get surahNumber => $composableBuilder(
      column: $table.surahNumber, builder: (column) => column);

  GeneratedColumn<int> get juzNumber =>
      $composableBuilder(column: $table.juzNumber, builder: (column) => column);

  GeneratedColumn<int> get startAyah =>
      $composableBuilder(column: $table.startAyah, builder: (column) => column);

  GeneratedColumn<int> get endAyah =>
      $composableBuilder(column: $table.endAyah, builder: (column) => column);
}

class $$SurahJuzTableTableManager extends RootTableManager<
    _$QuranDatabase,
    $SurahJuzTable,
    SurahJuzData,
    $$SurahJuzTableFilterComposer,
    $$SurahJuzTableOrderingComposer,
    $$SurahJuzTableAnnotationComposer,
    $$SurahJuzTableCreateCompanionBuilder,
    $$SurahJuzTableUpdateCompanionBuilder,
    (
      SurahJuzData,
      BaseReferences<_$QuranDatabase, $SurahJuzTable, SurahJuzData>
    ),
    SurahJuzData,
    PrefetchHooks Function()> {
  $$SurahJuzTableTableManager(_$QuranDatabase db, $SurahJuzTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SurahJuzTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SurahJuzTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SurahJuzTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> surahNumber = const Value.absent(),
            Value<int> juzNumber = const Value.absent(),
            Value<int?> startAyah = const Value.absent(),
            Value<int?> endAyah = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              SurahJuzCompanion(
            surahNumber: surahNumber,
            juzNumber: juzNumber,
            startAyah: startAyah,
            endAyah: endAyah,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required int surahNumber,
            required int juzNumber,
            Value<int?> startAyah = const Value.absent(),
            Value<int?> endAyah = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              SurahJuzCompanion.insert(
            surahNumber: surahNumber,
            juzNumber: juzNumber,
            startAyah: startAyah,
            endAyah: endAyah,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$SurahJuzTableProcessedTableManager = ProcessedTableManager<
    _$QuranDatabase,
    $SurahJuzTable,
    SurahJuzData,
    $$SurahJuzTableFilterComposer,
    $$SurahJuzTableOrderingComposer,
    $$SurahJuzTableAnnotationComposer,
    $$SurahJuzTableCreateCompanionBuilder,
    $$SurahJuzTableUpdateCompanionBuilder,
    (
      SurahJuzData,
      BaseReferences<_$QuranDatabase, $SurahJuzTable, SurahJuzData>
    ),
    SurahJuzData,
    PrefetchHooks Function()>;

class $QuranDatabaseManager {
  final _$QuranDatabase _db;
  $QuranDatabaseManager(this._db);
  $$SurahTableTableManager get surah =>
      $$SurahTableTableManager(_db, _db.surah);
  $$AyahsTableTableManager get ayahs =>
      $$AyahsTableTableManager(_db, _db.ayahs);
  $$JuzTableTableManager get juz => $$JuzTableTableManager(_db, _db.juz);
  $$QuranLineTableTableManager get quranLine =>
      $$QuranLineTableTableManager(_db, _db.quranLine);
  $$QuranLineWordTableTableManager get quranLineWord =>
      $$QuranLineWordTableTableManager(_db, _db.quranLineWord);
  $$SurahJuzTableTableManager get surahJuz =>
      $$SurahJuzTableTableManager(_db, _db.surahJuz);
}

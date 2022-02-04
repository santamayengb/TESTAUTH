// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RestaurantRecord> _$restaurantRecordSerializer =
    new _$RestaurantRecordSerializer();

class _$RestaurantRecordSerializer
    implements StructuredSerializer<RestaurantRecord> {
  @override
  final Iterable<Type> types = const [RestaurantRecord, _$RestaurantRecord];
  @override
  final String wireName = 'RestaurantRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, RestaurantRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.restaurantName;
    if (value != null) {
      result
        ..add('RestaurantName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  RestaurantRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RestaurantRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'RestaurantName':
          result.restaurantName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$RestaurantRecord extends RestaurantRecord {
  @override
  final String restaurantName;
  @override
  final DocumentReference<Object> reference;

  factory _$RestaurantRecord(
          [void Function(RestaurantRecordBuilder) updates]) =>
      (new RestaurantRecordBuilder()..update(updates)).build();

  _$RestaurantRecord._({this.restaurantName, this.reference}) : super._();

  @override
  RestaurantRecord rebuild(void Function(RestaurantRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RestaurantRecordBuilder toBuilder() =>
      new RestaurantRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RestaurantRecord &&
        restaurantName == other.restaurantName &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, restaurantName.hashCode), reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RestaurantRecord')
          ..add('restaurantName', restaurantName)
          ..add('reference', reference))
        .toString();
  }
}

class RestaurantRecordBuilder
    implements Builder<RestaurantRecord, RestaurantRecordBuilder> {
  _$RestaurantRecord _$v;

  String _restaurantName;
  String get restaurantName => _$this._restaurantName;
  set restaurantName(String restaurantName) =>
      _$this._restaurantName = restaurantName;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  RestaurantRecordBuilder() {
    RestaurantRecord._initializeBuilder(this);
  }

  RestaurantRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _restaurantName = $v.restaurantName;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RestaurantRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RestaurantRecord;
  }

  @override
  void update(void Function(RestaurantRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RestaurantRecord build() {
    final _$result = _$v ??
        new _$RestaurantRecord._(
            restaurantName: restaurantName, reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
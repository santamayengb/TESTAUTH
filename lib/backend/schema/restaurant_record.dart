import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'restaurant_record.g.dart';

abstract class RestaurantRecord
    implements Built<RestaurantRecord, RestaurantRecordBuilder> {
  static Serializer<RestaurantRecord> get serializer =>
      _$restaurantRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'RestaurantName')
  String get restaurantName;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(RestaurantRecordBuilder builder) =>
      builder..restaurantName = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Restaurant');

  static Stream<RestaurantRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<RestaurantRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  RestaurantRecord._();
  factory RestaurantRecord([void Function(RestaurantRecordBuilder) updates]) =
      _$RestaurantRecord;

  static RestaurantRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createRestaurantRecordData({
  String restaurantName,
}) =>
    serializers.toFirestore(RestaurantRecord.serializer,
        RestaurantRecord((r) => r..restaurantName = restaurantName));

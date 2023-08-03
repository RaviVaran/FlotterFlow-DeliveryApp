import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RestaurantRecord extends FirestoreRecord {
  RestaurantRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "open" field.
  DateTime? _open;
  DateTime? get open => _open;
  bool hasOpen() => _open != null;

  // "close" field.
  DateTime? _close;
  DateTime? get close => _close;
  bool hasClose() => _close != null;

  // "location" field.
  LatLng? _location;
  LatLng? get location => _location;
  bool hasLocation() => _location != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _category = snapshotData['category'] as String?;
    _address = snapshotData['address'] as String?;
    _image = snapshotData['image'] as String?;
    _open = snapshotData['open'] as DateTime?;
    _close = snapshotData['close'] as DateTime?;
    _location = snapshotData['location'] as LatLng?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('restaurant');

  static Stream<RestaurantRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RestaurantRecord.fromSnapshot(s));

  static Future<RestaurantRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RestaurantRecord.fromSnapshot(s));

  static RestaurantRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RestaurantRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RestaurantRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RestaurantRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RestaurantRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RestaurantRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRestaurantRecordData({
  String? name,
  String? category,
  String? address,
  String? image,
  DateTime? open,
  DateTime? close,
  LatLng? location,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'category': category,
      'address': address,
      'image': image,
      'open': open,
      'close': close,
      'location': location,
    }.withoutNulls,
  );

  return firestoreData;
}

class RestaurantRecordDocumentEquality implements Equality<RestaurantRecord> {
  const RestaurantRecordDocumentEquality();

  @override
  bool equals(RestaurantRecord? e1, RestaurantRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.category == e2?.category &&
        e1?.address == e2?.address &&
        e1?.image == e2?.image &&
        e1?.open == e2?.open &&
        e1?.close == e2?.close &&
        e1?.location == e2?.location;
  }

  @override
  int hash(RestaurantRecord? e) => const ListEquality().hash([
        e?.name,
        e?.category,
        e?.address,
        e?.image,
        e?.open,
        e?.close,
        e?.location
      ]);

  @override
  bool isValidKey(Object? o) => o is RestaurantRecord;
}

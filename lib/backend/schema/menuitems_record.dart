import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MenuitemsRecord extends FirestoreRecord {
  MenuitemsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "price" field.
  int? _price;
  int get price => _price ?? 0;
  bool hasPrice() => _price != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _price = castToType<int>(snapshotData['price']);
    _image = snapshotData['image'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('menuitems')
          : FirebaseFirestore.instance.collectionGroup('menuitems');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('menuitems').doc();

  static Stream<MenuitemsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MenuitemsRecord.fromSnapshot(s));

  static Future<MenuitemsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MenuitemsRecord.fromSnapshot(s));

  static MenuitemsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MenuitemsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MenuitemsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MenuitemsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MenuitemsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MenuitemsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMenuitemsRecordData({
  String? name,
  int? price,
  String? image,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'price': price,
      'image': image,
    }.withoutNulls,
  );

  return firestoreData;
}

class MenuitemsRecordDocumentEquality implements Equality<MenuitemsRecord> {
  const MenuitemsRecordDocumentEquality();

  @override
  bool equals(MenuitemsRecord? e1, MenuitemsRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.price == e2?.price &&
        e1?.image == e2?.image;
  }

  @override
  int hash(MenuitemsRecord? e) =>
      const ListEquality().hash([e?.name, e?.price, e?.image]);

  @override
  bool isValidKey(Object? o) => o is MenuitemsRecord;
}

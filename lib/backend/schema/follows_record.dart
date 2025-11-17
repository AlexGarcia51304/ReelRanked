import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FollowsRecord extends FirestoreRecord {
  FollowsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "followerRef" field.
  DocumentReference? _followerRef;
  DocumentReference? get followerRef => _followerRef;
  bool hasFollowerRef() => _followerRef != null;

  // "followedRed" field.
  DocumentReference? _followedRed;
  DocumentReference? get followedRed => _followedRed;
  bool hasFollowedRed() => _followedRed != null;

  void _initializeFields() {
    _followerRef = snapshotData['followerRef'] as DocumentReference?;
    _followedRed = snapshotData['followedRed'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('follows');

  static Stream<FollowsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FollowsRecord.fromSnapshot(s));

  static Future<FollowsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FollowsRecord.fromSnapshot(s));

  static FollowsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FollowsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FollowsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FollowsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FollowsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FollowsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFollowsRecordData({
  DocumentReference? followerRef,
  DocumentReference? followedRed,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'followerRef': followerRef,
      'followedRed': followedRed,
    }.withoutNulls,
  );

  return firestoreData;
}

class FollowsRecordDocumentEquality implements Equality<FollowsRecord> {
  const FollowsRecordDocumentEquality();

  @override
  bool equals(FollowsRecord? e1, FollowsRecord? e2) {
    return e1?.followerRef == e2?.followerRef &&
        e1?.followedRed == e2?.followedRed;
  }

  @override
  int hash(FollowsRecord? e) =>
      const ListEquality().hash([e?.followerRef, e?.followedRed]);

  @override
  bool isValidKey(Object? o) => o is FollowsRecord;
}

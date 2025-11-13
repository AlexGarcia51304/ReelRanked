import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProfileCreationRecord extends FirestoreRecord {
  ProfileCreationRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  bool hasCity() => _city != null;

  // "state" field.
  String? _state;
  String get state => _state ?? '';
  bool hasState() => _state != null;

  // "bio" field.
  String? _bio;
  String get bio => _bio ?? '';
  bool hasBio() => _bio != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "username" field.
  String? _username;
  String get username => _username ?? '';
  bool hasUsername() => _username != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "following_users" field.
  List<DocumentReference>? _followingUsers;
  List<DocumentReference> get followingUsers => _followingUsers ?? const [];
  bool hasFollowingUsers() => _followingUsers != null;

  // "users_following_me" field.
  List<DocumentReference>? _usersFollowingMe;
  List<DocumentReference> get usersFollowingMe => _usersFollowingMe ?? const [];
  bool hasUsersFollowingMe() => _usersFollowingMe != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _city = snapshotData['city'] as String?;
    _state = snapshotData['state'] as String?;
    _bio = snapshotData['bio'] as String?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _username = snapshotData['username'] as String?;
    _uid = snapshotData['uid'] as String?;
    _followingUsers = getDataList(snapshotData['following_users']);
    _usersFollowingMe = getDataList(snapshotData['users_following_me']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('profile_creation');

  static Stream<ProfileCreationRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProfileCreationRecord.fromSnapshot(s));

  static Future<ProfileCreationRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProfileCreationRecord.fromSnapshot(s));

  static ProfileCreationRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProfileCreationRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProfileCreationRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProfileCreationRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProfileCreationRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProfileCreationRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProfileCreationRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  DateTime? createdTime,
  String? city,
  String? state,
  String? bio,
  String? phoneNumber,
  String? username,
  String? uid,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'created_time': createdTime,
      'city': city,
      'state': state,
      'bio': bio,
      'phone_number': phoneNumber,
      'username': username,
      'uid': uid,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProfileCreationRecordDocumentEquality
    implements Equality<ProfileCreationRecord> {
  const ProfileCreationRecordDocumentEquality();

  @override
  bool equals(ProfileCreationRecord? e1, ProfileCreationRecord? e2) {
    const listEquality = ListEquality();
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.createdTime == e2?.createdTime &&
        e1?.city == e2?.city &&
        e1?.state == e2?.state &&
        e1?.bio == e2?.bio &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.username == e2?.username &&
        e1?.uid == e2?.uid &&
        listEquality.equals(e1?.followingUsers, e2?.followingUsers) &&
        listEquality.equals(e1?.usersFollowingMe, e2?.usersFollowingMe);
  }

  @override
  int hash(ProfileCreationRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.createdTime,
        e?.city,
        e?.state,
        e?.bio,
        e?.phoneNumber,
        e?.username,
        e?.uid,
        e?.followingUsers,
        e?.usersFollowingMe
      ]);

  @override
  bool isValidKey(Object? o) => o is ProfileCreationRecord;
}

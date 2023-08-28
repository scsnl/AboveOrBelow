import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProblemsRecord extends FirestoreRecord {
  ProblemsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "problemLevel" field.
  int? _problemLevel;
  int get problemLevel => _problemLevel ?? 0;
  bool hasProblemLevel() => _problemLevel != null;

  // "problemOptions" field.
  int? _problemOptions;
  int get problemOptions => _problemOptions ?? 0;
  bool hasProblemOptions() => _problemOptions != null;

  // "targetNum" field.
  int? _targetNum;
  int get targetNum => _targetNum ?? 0;
  bool hasTargetNum() => _targetNum != null;

  // "isBelow" field.
  bool? _isBelow;
  bool get isBelow => _isBelow ?? false;
  bool hasisBelow() => _isBelow != null;

  // "num1" field.
  int? _num1;
  int get num1 => _num1 ?? 0;
  bool hasNum1() => _num1 != null;

  // "num2" field.
  int? _num2;
  int get num2 => _num2 ?? 0;
  bool hasNum2() => _num2 != null;

  // "num3" field.
  int? _num3;
  int get num3 => _num3 ?? 0;
  bool hasNum3() => _num3 != null;

  // "num4" field.
  int? _num4;
  int get num4 => _num4 ?? 0;
  bool hasNum4() => _num4 != null;

  // "num5" field.
  int? _num5;
  int get num5 => _num5 ?? 0;
  bool hasNum5() => _num5 != null;

  // "num1Symbolic" field.
  bool? _num1Symbolic;
  bool get num1Symbolic => _num1Symbolic ?? false;
  bool hasNum1Symbolic() => _num1Symbolic != null;

  // "num2Symbolic" field.
  bool? _num2Symbolic;
  bool get num2Symbolic => _num2Symbolic ?? false;
  bool hasNum2Symbolic() => _num2Symbolic != null;

  // "num3Symbolic" field.
  bool? _num3Symbolic;
  bool get num3Symbolic => _num3Symbolic ?? false;
  bool hasNum3Symbolic() => _num3Symbolic != null;

  // "num4Symbolic" field.
  bool? _num4Symbolic;
  bool get num4Symbolic => _num4Symbolic ?? false;
  bool hasNum4Symbolic() => _num4Symbolic != null;

  // "num5Symbolic" field.
  bool? _num5Symbolic;
  bool get num5Symbolic => _num5Symbolic ?? false;
  bool hasNum5Symbolic() => _num5Symbolic != null;

  // "targetNumSymbolic" field.
  bool? _targetNumSymbolic;
  bool get targetNumSymbolic => _targetNumSymbolic ?? false;
  bool hasTargetNumSymbolic() => _targetNumSymbolic != null;

  // "problemCycle" field.
  int? _problemCycle;
  int get problemCycle => _problemCycle ?? 0;
  bool hasProblemCycle() => _problemCycle != null;

  // "referenceID" field.
  String? _referenceID;
  String get referenceID => _referenceID ?? '';
  bool hasReferenceID() => _referenceID != null;

  // "problemID" field.
  int? _problemID;
  int get problemID => _problemID ?? 0;
  bool hasProblemID() => _problemID != null;

  // "correctNum" field.
  int? _correctNum;
  int get correctNum => _correctNum ?? 0;
  bool hasCorrectNum() => _correctNum != null;

  // "foil" field.
  bool? _foil;
  bool get foil => _foil ?? false;
  bool hasFoil() => _foil != null;

  void _initializeFields() {
    _problemLevel = castToType<int>(snapshotData['problemLevel']);
    _problemOptions = castToType<int>(snapshotData['problemOptions']);
    _targetNum = castToType<int>(snapshotData['targetNum']);
    _isBelow = snapshotData['isBelow'] as bool?;
    _num1 = castToType<int>(snapshotData['num1']);
    _num2 = castToType<int>(snapshotData['num2']);
    _num3 = castToType<int>(snapshotData['num3']);
    _num4 = castToType<int>(snapshotData['num4']);
    _num5 = castToType<int>(snapshotData['num5']);
    _num1Symbolic = snapshotData['num1Symbolic'] as bool?;
    _num2Symbolic = snapshotData['num2Symbolic'] as bool?;
    _num3Symbolic = snapshotData['num3Symbolic'] as bool?;
    _num4Symbolic = snapshotData['num4Symbolic'] as bool?;
    _num5Symbolic = snapshotData['num5Symbolic'] as bool?;
    _targetNumSymbolic = snapshotData['targetNumSymbolic'] as bool?;
    _problemCycle = castToType<int>(snapshotData['problemCycle']);
    _referenceID = snapshotData['referenceID'] as String?;
    _problemID = castToType<int>(snapshotData['problemID']);
    _correctNum = castToType<int>(snapshotData['correctNum']);
    _foil = snapshotData['foil'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('problems');

  static Stream<ProblemsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProblemsRecord.fromSnapshot(s));

  static Future<ProblemsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProblemsRecord.fromSnapshot(s));

  static ProblemsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProblemsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProblemsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProblemsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProblemsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProblemsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProblemsRecordData({
  int? problemLevel,
  int? problemOptions,
  int? targetNum,
  bool? isBelow,
  int? num1,
  int? num2,
  int? num3,
  int? num4,
  int? num5,
  bool? num1Symbolic,
  bool? num2Symbolic,
  bool? num3Symbolic,
  bool? num4Symbolic,
  bool? num5Symbolic,
  bool? targetNumSymbolic,
  int? problemCycle,
  String? referenceID,
  int? problemID,
  int? correctNum,
  bool? foil,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'problemLevel': problemLevel,
      'problemOptions': problemOptions,
      'targetNum': targetNum,
      'isBelow': isBelow,
      'num1': num1,
      'num2': num2,
      'num3': num3,
      'num4': num4,
      'num5': num5,
      'num1Symbolic': num1Symbolic,
      'num2Symbolic': num2Symbolic,
      'num3Symbolic': num3Symbolic,
      'num4Symbolic': num4Symbolic,
      'num5Symbolic': num5Symbolic,
      'targetNumSymbolic': targetNumSymbolic,
      'problemCycle': problemCycle,
      'referenceID': referenceID,
      'problemID': problemID,
      'correctNum': correctNum,
      'foil': foil,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProblemsRecordDocumentEquality implements Equality<ProblemsRecord> {
  const ProblemsRecordDocumentEquality();

  @override
  bool equals(ProblemsRecord? e1, ProblemsRecord? e2) {
    return e1?.problemLevel == e2?.problemLevel &&
        e1?.problemOptions == e2?.problemOptions &&
        e1?.targetNum == e2?.targetNum &&
        e1?.isBelow == e2?.isBelow &&
        e1?.num1 == e2?.num1 &&
        e1?.num2 == e2?.num2 &&
        e1?.num3 == e2?.num3 &&
        e1?.num4 == e2?.num4 &&
        e1?.num5 == e2?.num5 &&
        e1?.num1Symbolic == e2?.num1Symbolic &&
        e1?.num2Symbolic == e2?.num2Symbolic &&
        e1?.num3Symbolic == e2?.num3Symbolic &&
        e1?.num4Symbolic == e2?.num4Symbolic &&
        e1?.num5Symbolic == e2?.num5Symbolic &&
        e1?.targetNumSymbolic == e2?.targetNumSymbolic &&
        e1?.problemCycle == e2?.problemCycle &&
        e1?.referenceID == e2?.referenceID &&
        e1?.problemID == e2?.problemID &&
        e1?.correctNum == e2?.correctNum &&
        e1?.foil == e2?.foil;
  }

  @override
  int hash(ProblemsRecord? e) => const ListEquality().hash([
        e?.problemLevel,
        e?.problemOptions,
        e?.targetNum,
        e?.isBelow,
        e?.num1,
        e?.num2,
        e?.num3,
        e?.num4,
        e?.num5,
        e?.num1Symbolic,
        e?.num2Symbolic,
        e?.num3Symbolic,
        e?.num4Symbolic,
        e?.num5Symbolic,
        e?.targetNumSymbolic,
        e?.problemCycle,
        e?.referenceID,
        e?.problemID,
        e?.correctNum,
        e?.foil
      ]);

  @override
  bool isValidKey(Object? o) => o is ProblemsRecord;
}

// ignore_for_file: unnecessary_getters_setters
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProblemStruct extends FFFirebaseStruct {
  ProblemStruct({
    int? problemLevel,
    int? problemOptions,
    int? targetNum,
    bool? questionIsBelow,
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
    bool? firstAttempt,
    int? correctNum,
    bool? foil,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _problemLevel = problemLevel,
        _problemOptions = problemOptions,
        _targetNum = targetNum,
        _questionIsBelow = questionIsBelow,
        _num1 = num1,
        _num2 = num2,
        _num3 = num3,
        _num4 = num4,
        _num5 = num5,
        _num1Symbolic = num1Symbolic,
        _num2Symbolic = num2Symbolic,
        _num3Symbolic = num3Symbolic,
        _num4Symbolic = num4Symbolic,
        _num5Symbolic = num5Symbolic,
        _targetNumSymbolic = targetNumSymbolic,
        _problemCycle = problemCycle,
        _referenceID = referenceID,
        _problemID = problemID,
        _firstAttempt = firstAttempt,
        _correctNum = correctNum,
        _foil = foil,
        super(firestoreUtilData);

  // "problemLevel" field.
  int? _problemLevel;
  int get problemLevel => _problemLevel ?? 0;
  set problemLevel(int? val) => _problemLevel = val;
  void incrementProblemLevel(int amount) =>
      _problemLevel = problemLevel + amount;
  bool hasProblemLevel() => _problemLevel != null;

  // "problemOptions" field.
  int? _problemOptions;
  int get problemOptions => _problemOptions ?? 0;
  set problemOptions(int? val) => _problemOptions = val;
  void incrementProblemOptions(int amount) =>
      _problemOptions = problemOptions + amount;
  bool hasProblemOptions() => _problemOptions != null;

  // "targetNum" field.
  int? _targetNum;
  int get targetNum => _targetNum ?? 0;
  set targetNum(int? val) => _targetNum = val;
  void incrementTargetNum(int amount) => _targetNum = targetNum + amount;
  bool hasTargetNum() => _targetNum != null;

  // "questionIsBelow" field.
  bool? _questionIsBelow;
  bool get questionIsBelow => _questionIsBelow ?? false;
  set questionIsBelow(bool? val) => _questionIsBelow = val;
  bool hasQuestionIsBelow() => _questionIsBelow != null;

  // "num1" field.
  int? _num1;
  int get num1 => _num1 ?? 0;
  set num1(int? val) => _num1 = val;
  void incrementNum1(int amount) => _num1 = num1 + amount;
  bool hasNum1() => _num1 != null;

  // "num2" field.
  int? _num2;
  int get num2 => _num2 ?? 0;
  set num2(int? val) => _num2 = val;
  void incrementNum2(int amount) => _num2 = num2 + amount;
  bool hasNum2() => _num2 != null;

  // "num3" field.
  int? _num3;
  int get num3 => _num3 ?? 0;
  set num3(int? val) => _num3 = val;
  void incrementNum3(int amount) => _num3 = num3 + amount;
  bool hasNum3() => _num3 != null;

  // "num4" field.
  int? _num4;
  int get num4 => _num4 ?? 0;
  set num4(int? val) => _num4 = val;
  void incrementNum4(int amount) => _num4 = num4 + amount;
  bool hasNum4() => _num4 != null;

  // "num5" field.
  int? _num5;
  int get num5 => _num5 ?? 0;
  set num5(int? val) => _num5 = val;
  void incrementNum5(int amount) => _num5 = num5 + amount;
  bool hasNum5() => _num5 != null;

  // "num1Symbolic" field.
  bool? _num1Symbolic;
  bool get num1Symbolic => _num1Symbolic ?? false;
  set num1Symbolic(bool? val) => _num1Symbolic = val;
  bool hasNum1Symbolic() => _num1Symbolic != null;

  // "num2Symbolic" field.
  bool? _num2Symbolic;
  bool get num2Symbolic => _num2Symbolic ?? false;
  set num2Symbolic(bool? val) => _num2Symbolic = val;
  bool hasNum2Symbolic() => _num2Symbolic != null;

  // "num3Symbolic" field.
  bool? _num3Symbolic;
  bool get num3Symbolic => _num3Symbolic ?? false;
  set num3Symbolic(bool? val) => _num3Symbolic = val;
  bool hasNum3Symbolic() => _num3Symbolic != null;

  // "num4Symbolic" field.
  bool? _num4Symbolic;
  bool get num4Symbolic => _num4Symbolic ?? false;
  set num4Symbolic(bool? val) => _num4Symbolic = val;
  bool hasNum4Symbolic() => _num4Symbolic != null;

  // "num5Symbolic" field.
  bool? _num5Symbolic;
  bool get num5Symbolic => _num5Symbolic ?? false;
  set num5Symbolic(bool? val) => _num5Symbolic = val;
  bool hasNum5Symbolic() => _num5Symbolic != null;

  // "targetNumSymbolic" field.
  bool? _targetNumSymbolic;
  bool get targetNumSymbolic => _targetNumSymbolic ?? false;
  set targetNumSymbolic(bool? val) => _targetNumSymbolic = val;
  bool hasTargetNumSymbolic() => _targetNumSymbolic != null;

  // "problemCycle" field.
  int? _problemCycle;
  int get problemCycle => _problemCycle ?? 0;
  set problemCycle(int? val) => _problemCycle = val;
  void incrementProblemCycle(int amount) =>
      _problemCycle = problemCycle + amount;
  bool hasProblemCycle() => _problemCycle != null;

  // "referenceID" field.
  String? _referenceID;
  String get referenceID => _referenceID ?? '';
  set referenceID(String? val) => _referenceID = val;
  bool hasReferenceID() => _referenceID != null;

  // "problemID" field.
  int? _problemID;
  int get problemID => _problemID ?? 0;
  set problemID(int? val) => _problemID = val;
  void incrementProblemID(int amount) => _problemID = problemID + amount;
  bool hasProblemID() => _problemID != null;

  // "firstAttempt" field.
  bool? _firstAttempt;
  bool get firstAttempt => _firstAttempt ?? false;
  set firstAttempt(bool? val) => _firstAttempt = val;
  bool hasFirstAttempt() => _firstAttempt != null;

  // "correctNum" field.
  int? _correctNum;
  int get correctNum => _correctNum ?? 0;
  set correctNum(int? val) => _correctNum = val;
  void incrementCorrectNum(int amount) => _correctNum = correctNum + amount;
  bool hasCorrectNum() => _correctNum != null;

  // "foil" field.
  bool? _foil;
  bool get foil => _foil ?? false;
  set foil(bool? val) => _foil = val;
  bool hasFoil() => _foil != null;

  static ProblemStruct fromMap(Map<String, dynamic> data) => ProblemStruct(
        problemLevel: castToType<int>(data['problemLevel']),
        problemOptions: castToType<int>(data['problemOptions']),
        targetNum: castToType<int>(data['targetNum']),
        questionIsBelow: data['questionIsBelow'] as bool?,
        num1: castToType<int>(data['num1']),
        num2: castToType<int>(data['num2']),
        num3: castToType<int>(data['num3']),
        num4: castToType<int>(data['num4']),
        num5: castToType<int>(data['num5']),
        num1Symbolic: data['num1Symbolic'] as bool?,
        num2Symbolic: data['num2Symbolic'] as bool?,
        num3Symbolic: data['num3Symbolic'] as bool?,
        num4Symbolic: data['num4Symbolic'] as bool?,
        num5Symbolic: data['num5Symbolic'] as bool?,
        targetNumSymbolic: data['targetNumSymbolic'] as bool?,
        problemCycle: castToType<int>(data['problemCycle']),
        referenceID: data['referenceID'] as String?,
        problemID: castToType<int>(data['problemID']),
        firstAttempt: data['firstAttempt'] as bool?,
        correctNum: castToType<int>(data['correctNum']),
        foil: data['foil'] as bool?,
      );

  static ProblemStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? ProblemStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'problemLevel': _problemLevel,
        'problemOptions': _problemOptions,
        'targetNum': _targetNum,
        'questionIsBelow': _questionIsBelow,
        'num1': _num1,
        'num2': _num2,
        'num3': _num3,
        'num4': _num4,
        'num5': _num5,
        'num1Symbolic': _num1Symbolic,
        'num2Symbolic': _num2Symbolic,
        'num3Symbolic': _num3Symbolic,
        'num4Symbolic': _num4Symbolic,
        'num5Symbolic': _num5Symbolic,
        'targetNumSymbolic': _targetNumSymbolic,
        'problemCycle': _problemCycle,
        'referenceID': _referenceID,
        'problemID': _problemID,
        'firstAttempt': _firstAttempt,
        'correctNum': _correctNum,
        'foil': _foil,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'problemLevel': serializeParam(
          _problemLevel,
          ParamType.int,
        ),
        'problemOptions': serializeParam(
          _problemOptions,
          ParamType.int,
        ),
        'targetNum': serializeParam(
          _targetNum,
          ParamType.int,
        ),
        'questionIsBelow': serializeParam(
          _questionIsBelow,
          ParamType.bool,
        ),
        'num1': serializeParam(
          _num1,
          ParamType.int,
        ),
        'num2': serializeParam(
          _num2,
          ParamType.int,
        ),
        'num3': serializeParam(
          _num3,
          ParamType.int,
        ),
        'num4': serializeParam(
          _num4,
          ParamType.int,
        ),
        'num5': serializeParam(
          _num5,
          ParamType.int,
        ),
        'num1Symbolic': serializeParam(
          _num1Symbolic,
          ParamType.bool,
        ),
        'num2Symbolic': serializeParam(
          _num2Symbolic,
          ParamType.bool,
        ),
        'num3Symbolic': serializeParam(
          _num3Symbolic,
          ParamType.bool,
        ),
        'num4Symbolic': serializeParam(
          _num4Symbolic,
          ParamType.bool,
        ),
        'num5Symbolic': serializeParam(
          _num5Symbolic,
          ParamType.bool,
        ),
        'targetNumSymbolic': serializeParam(
          _targetNumSymbolic,
          ParamType.bool,
        ),
        'problemCycle': serializeParam(
          _problemCycle,
          ParamType.int,
        ),
        'referenceID': serializeParam(
          _referenceID,
          ParamType.String,
        ),
        'problemID': serializeParam(
          _problemID,
          ParamType.int,
        ),
        'firstAttempt': serializeParam(
          _firstAttempt,
          ParamType.bool,
        ),
        'correctNum': serializeParam(
          _correctNum,
          ParamType.int,
        ),
        'foil': serializeParam(
          _foil,
          ParamType.bool,
        ),
      }.withoutNulls;

  static ProblemStruct fromSerializableMap(Map<String, dynamic> data) =>
      ProblemStruct(
        problemLevel: deserializeParam(
          data['problemLevel'],
          ParamType.int,
          false,
        ),
        problemOptions: deserializeParam(
          data['problemOptions'],
          ParamType.int,
          false,
        ),
        targetNum: deserializeParam(
          data['targetNum'],
          ParamType.int,
          false,
        ),
        questionIsBelow: deserializeParam(
          data['questionIsBelow'],
          ParamType.bool,
          false,
        ),
        num1: deserializeParam(
          data['num1'],
          ParamType.int,
          false,
        ),
        num2: deserializeParam(
          data['num2'],
          ParamType.int,
          false,
        ),
        num3: deserializeParam(
          data['num3'],
          ParamType.int,
          false,
        ),
        num4: deserializeParam(
          data['num4'],
          ParamType.int,
          false,
        ),
        num5: deserializeParam(
          data['num5'],
          ParamType.int,
          false,
        ),
        num1Symbolic: deserializeParam(
          data['num1Symbolic'],
          ParamType.bool,
          false,
        ),
        num2Symbolic: deserializeParam(
          data['num2Symbolic'],
          ParamType.bool,
          false,
        ),
        num3Symbolic: deserializeParam(
          data['num3Symbolic'],
          ParamType.bool,
          false,
        ),
        num4Symbolic: deserializeParam(
          data['num4Symbolic'],
          ParamType.bool,
          false,
        ),
        num5Symbolic: deserializeParam(
          data['num5Symbolic'],
          ParamType.bool,
          false,
        ),
        targetNumSymbolic: deserializeParam(
          data['targetNumSymbolic'],
          ParamType.bool,
          false,
        ),
        problemCycle: deserializeParam(
          data['problemCycle'],
          ParamType.int,
          false,
        ),
        referenceID: deserializeParam(
          data['referenceID'],
          ParamType.String,
          false,
        ),
        problemID: deserializeParam(
          data['problemID'],
          ParamType.int,
          false,
        ),
        firstAttempt: deserializeParam(
          data['firstAttempt'],
          ParamType.bool,
          false,
        ),
        correctNum: deserializeParam(
          data['correctNum'],
          ParamType.int,
          false,
        ),
        foil: deserializeParam(
          data['foil'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'ProblemStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ProblemStruct &&
        problemLevel == other.problemLevel &&
        problemOptions == other.problemOptions &&
        targetNum == other.targetNum &&
        questionIsBelow == other.questionIsBelow &&
        num1 == other.num1 &&
        num2 == other.num2 &&
        num3 == other.num3 &&
        num4 == other.num4 &&
        num5 == other.num5 &&
        num1Symbolic == other.num1Symbolic &&
        num2Symbolic == other.num2Symbolic &&
        num3Symbolic == other.num3Symbolic &&
        num4Symbolic == other.num4Symbolic &&
        num5Symbolic == other.num5Symbolic &&
        targetNumSymbolic == other.targetNumSymbolic &&
        problemCycle == other.problemCycle &&
        referenceID == other.referenceID &&
        problemID == other.problemID &&
        firstAttempt == other.firstAttempt &&
        correctNum == other.correctNum &&
        foil == other.foil;
  }

  @override
  int get hashCode => const ListEquality().hash([
        problemLevel,
        problemOptions,
        targetNum,
        questionIsBelow,
        num1,
        num2,
        num3,
        num4,
        num5,
        num1Symbolic,
        num2Symbolic,
        num3Symbolic,
        num4Symbolic,
        num5Symbolic,
        targetNumSymbolic,
        problemCycle,
        referenceID,
        problemID,
        firstAttempt,
        correctNum,
        foil
      ]);
}

ProblemStruct createProblemStruct({
  int? problemLevel,
  int? problemOptions,
  int? targetNum,
  bool? questionIsBelow,
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
  bool? firstAttempt,
  int? correctNum,
  bool? foil,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ProblemStruct(
      problemLevel: problemLevel,
      problemOptions: problemOptions,
      targetNum: targetNum,
      questionIsBelow: questionIsBelow,
      num1: num1,
      num2: num2,
      num3: num3,
      num4: num4,
      num5: num5,
      num1Symbolic: num1Symbolic,
      num2Symbolic: num2Symbolic,
      num3Symbolic: num3Symbolic,
      num4Symbolic: num4Symbolic,
      num5Symbolic: num5Symbolic,
      targetNumSymbolic: targetNumSymbolic,
      problemCycle: problemCycle,
      referenceID: referenceID,
      problemID: problemID,
      firstAttempt: firstAttempt,
      correctNum: correctNum,
      foil: foil,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ProblemStruct? updateProblemStruct(
  ProblemStruct? problem, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    problem
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addProblemStructData(
  Map<String, dynamic> firestoreData,
  ProblemStruct? problem,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (problem == null) {
    return;
  }
  if (problem.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && problem.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final problemData = getProblemFirestoreData(problem, forFieldValue);
  final nestedData = problemData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = problem.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getProblemFirestoreData(
  ProblemStruct? problem, [
  bool forFieldValue = false,
]) {
  if (problem == null) {
    return {};
  }
  final firestoreData = mapToFirestore(problem.toMap());

  // Add any Firestore field values
  problem.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getProblemListFirestoreData(
  List<ProblemStruct>? problems,
) =>
    problems?.map((e) => getProblemFirestoreData(e, true)).toList() ?? [];

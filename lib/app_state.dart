import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  int _coins = 0;
  int get coins => _coins;
  set coins(int _value) {
    _coins = _value;
  }

  DateTime? _questionStart = DateTime.fromMillisecondsSinceEpoch(1690497360000);
  DateTime? get questionStart => _questionStart;
  set questionStart(DateTime? _value) {
    _questionStart = _value;
  }

  DateTime? _questionFinish =
      DateTime.fromMillisecondsSinceEpoch(1690497360000);
  DateTime? get questionFinish => _questionFinish;
  set questionFinish(DateTime? _value) {
    _questionFinish = _value;
  }

  int _curProblemIndex = 0;
  int get curProblemIndex => _curProblemIndex;
  set curProblemIndex(int _value) {
    _curProblemIndex = _value;
  }

  bool _firstTry = false;
  bool get firstTry => _firstTry;
  set firstTry(bool _value) {
    _firstTry = _value;
  }

  ProblemStruct _problemInfo = ProblemStruct.fromSerializableMap(jsonDecode(
      '{\"num1\":\"0\",\"num2\":\"0\",\"num3\":\"0\",\"num4\":\"0\",\"num5\":\"0\"}'));
  ProblemStruct get problemInfo => _problemInfo;
  set problemInfo(ProblemStruct _value) {
    _problemInfo = _value;
  }

  void updateProblemInfoStruct(Function(ProblemStruct) updateFn) {
    updateFn(_problemInfo);
  }

  DateTime? _questionFirstResponse =
      DateTime.fromMillisecondsSinceEpoch(1690497360000);
  DateTime? get questionFirstResponse => _questionFirstResponse;
  set questionFirstResponse(DateTime? _value) {
    _questionFirstResponse = _value;
  }

  bool _gotQuestionCorrect = false;
  bool get gotQuestionCorrect => _gotQuestionCorrect;
  set gotQuestionCorrect(bool _value) {
    _gotQuestionCorrect = _value;
  }

  List<DocumentReference> _sessionQuestions = [];
  List<DocumentReference> get sessionQuestions => _sessionQuestions;
  set sessionQuestions(List<DocumentReference> _value) {
    _sessionQuestions = _value;
  }

  void addToSessionQuestions(DocumentReference _value) {
    _sessionQuestions.add(_value);
  }

  void removeFromSessionQuestions(DocumentReference _value) {
    _sessionQuestions.remove(_value);
  }

  void removeAtIndexFromSessionQuestions(int _index) {
    _sessionQuestions.removeAt(_index);
  }

  void updateSessionQuestionsAtIndex(
    int _index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    _sessionQuestions[_index] = updateFn(_sessionQuestions[_index]);
  }

  DocumentReference? _sessionParentReference;
  DocumentReference? get sessionParentReference => _sessionParentReference;
  set sessionParentReference(DocumentReference? _value) {
    _sessionParentReference = _value;
  }

  int _numInitialQuestions = 3;
  int get numInitialQuestions => _numInitialQuestions;
  set numInitialQuestions(int _value) {
    _numInitialQuestions = _value;
  }

  bool _answeredQuestion = false;
  bool get answeredQuestion => _answeredQuestion;
  set answeredQuestion(bool _value) {
    _answeredQuestion = _value;
  }

  String _userID = 'testing';
  String get userID => _userID;
  set userID(String _value) {
    _userID = _value;
  }

  String _curAnimal = 'Asset 10';
  String get curAnimal => _curAnimal;
  set curAnimal(String _value) {
    _curAnimal = _value;
  }

  int _curLevel = 1;
  int get curLevel => _curLevel;
  set curLevel(int _value) {
    _curLevel = _value;
  }

  int _curCycle = 1;
  int get curCycle => _curCycle;
  set curCycle(int _value) {
    _curCycle = _value;
  }

  int _numCorrect = 0;
  int get numCorrect => _numCorrect;
  set numCorrect(int _value) {
    _numCorrect = _value;
  }

  int _numTrialsDone = 0;
  int get numTrialsDone => _numTrialsDone;
  set numTrialsDone(int _value) {
    _numTrialsDone = _value;
  }

  int _desiredTrialNum = 12;
  int get desiredTrialNum => _desiredTrialNum;
  set desiredTrialNum(int _value) {
    _desiredTrialNum = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

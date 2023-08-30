import '/backend/backend.dart';
import '/components/speech_bubble_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'play3options_model.dart';
export 'play3options_model.dart';

class Play3optionsWidget extends StatefulWidget {
  const Play3optionsWidget({Key? key}) : super(key: key);

  @override
  _Play3optionsWidgetState createState() => _Play3optionsWidgetState();
}

class _Play3optionsWidgetState extends State<Play3optionsWidget>
    with TickerProviderStateMixin {
  late Play3optionsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'containerOnActionTriggerAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 1500.ms,
          begin: Offset(1.0, 1.0),
          end: Offset(1.1, 1.1),
        ),
      ],
    ),
    'containerOnActionTriggerAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 1500.ms,
          begin: Offset(1.0, 1.0),
          end: Offset(1.1, 1.1),
        ),
      ],
    ),
    'containerOnActionTriggerAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 1500.ms,
          begin: Offset(1.0, 1.0),
          end: Offset(1.1, 1.1),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Play3optionsModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        FFAppState().questionStart = getCurrentTimestamp;
      });

      var problemLogsRecordReference =
          ProblemLogsRecord.createDoc(FFAppState().sessionParentReference!);
      await problemLogsRecordReference.set(createProblemLogsRecordData(
        dateTime: FFAppState().questionStart,
        targetNum: FFAppState().problemInfo.targetNum,
        problemLevel: FFAppState().problemInfo.problemLevel,
        problemOptions: FFAppState().problemInfo.problemOptions,
        num1: FFAppState().problemInfo.num1,
        num2: FFAppState().problemInfo.num2,
        num3: FFAppState().problemInfo.num3,
        num4: FFAppState().problemInfo.num4,
        num5: FFAppState().problemInfo.num5,
        num1Symbolic: FFAppState().problemInfo.num1Symbolic,
        num2Symbolic: FFAppState().problemInfo.num2Symbolic,
        num3Symbolic: FFAppState().problemInfo.num3Symbolic,
        num4Symbolic: FFAppState().problemInfo.num4Symbolic,
        num5Symbolic: FFAppState().problemInfo.num5Symbolic,
        targetNumSymbolic: FFAppState().problemInfo.targetNumSymbolic,
        problemID: FFAppState().problemInfo.problemID,
        problemCycle: FFAppState().problemInfo.problemCycle,
        referenceID: FFAppState().problemInfo.referenceID,
        questionIsBelow: FFAppState().problemInfo.questionIsBelow,
        firstAttempt: FFAppState().problemInfo.firstAttempt,
        correctNum: FFAppState().problemInfo.correctNum,
        foil: FFAppState().problemInfo.foil,
        userID: FFAppState().userID,
      ));
      _model.newLog = ProblemLogsRecord.getDocumentFromData(
          createProblemLogsRecordData(
            dateTime: FFAppState().questionStart,
            targetNum: FFAppState().problemInfo.targetNum,
            problemLevel: FFAppState().problemInfo.problemLevel,
            problemOptions: FFAppState().problemInfo.problemOptions,
            num1: FFAppState().problemInfo.num1,
            num2: FFAppState().problemInfo.num2,
            num3: FFAppState().problemInfo.num3,
            num4: FFAppState().problemInfo.num4,
            num5: FFAppState().problemInfo.num5,
            num1Symbolic: FFAppState().problemInfo.num1Symbolic,
            num2Symbolic: FFAppState().problemInfo.num2Symbolic,
            num3Symbolic: FFAppState().problemInfo.num3Symbolic,
            num4Symbolic: FFAppState().problemInfo.num4Symbolic,
            num5Symbolic: FFAppState().problemInfo.num5Symbolic,
            targetNumSymbolic: FFAppState().problemInfo.targetNumSymbolic,
            problemID: FFAppState().problemInfo.problemID,
            problemCycle: FFAppState().problemInfo.problemCycle,
            referenceID: FFAppState().problemInfo.referenceID,
            questionIsBelow: FFAppState().problemInfo.questionIsBelow,
            firstAttempt: FFAppState().problemInfo.firstAttempt,
            correctNum: FFAppState().problemInfo.correctNum,
            foil: FFAppState().problemInfo.foil,
            userID: FFAppState().userID,
          ),
          problemLogsRecordReference);
    });

    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return StreamBuilder<List<ProblemLogsRecord>>(
      stream: queryProblemLogsRecord(
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        List<ProblemLogsRecord> play3optionsProblemLogsRecordList =
            snapshot.data!;
        // Return an empty Container when the item does not exist.
        if (snapshot.data!.isEmpty) {
          return Container();
        }
        final play3optionsProblemLogsRecord =
            play3optionsProblemLogsRecordList.isNotEmpty
                ? play3optionsProblemLogsRecordList.first
                : null;
        return GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: SafeArea(
              top: true,
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(0.0),
                      child: Image.asset(
                        'assets/images/iPad_Pro_12.9in__6.png',
                        width: double.infinity,
                        height: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.0, -0.25),
                    child: StreamBuilder<List<GameSessionDataRecord>>(
                      stream: queryGameSessionDataRecord(
                        singleRecord: true,
                      ),
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return Center(
                            child: SizedBox(
                              width: 50.0,
                              height: 50.0,
                              child: CircularProgressIndicator(
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  FlutterFlowTheme.of(context).primary,
                                ),
                              ),
                            ),
                          );
                        }
                        List<GameSessionDataRecord>
                            containerGameSessionDataRecordList = snapshot.data!;
                        // Return an empty Container when the item does not exist.
                        if (snapshot.data!.isEmpty) {
                          return Container();
                        }
                        final containerGameSessionDataRecord =
                            containerGameSessionDataRecordList.isNotEmpty
                                ? containerGameSessionDataRecordList.first
                                : null;
                        return Container(
                          width: 950.0,
                          height: 450.0,
                          decoration: BoxDecoration(),
                          child: Align(
                            alignment: AlignmentDirectional(0.0, -1.0),
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.asset(
                                    'assets/images/Group_6044.png',
                                    width: double.infinity,
                                    height: double.infinity,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Align(
                                      alignment:
                                          AlignmentDirectional(-0.77, -0.8),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          if (!FFAppState().answeredQuestion) {
                                            setState(() {
                                              FFAppState().answeredQuestion =
                                                  true;
                                              FFAppState().numTrialsDone =
                                                  FFAppState().numTrialsDone +
                                                      1;
                                              FFAppState()
                                                      .totalSessionQuestionsAnswered =
                                                  FFAppState()
                                                          .totalSessionQuestionsAnswered +
                                                      1;
                                            });
                                            if (FFAppState().curProblemIndex >
                                                FFAppState()
                                                    .numInitialQuestions) {
                                              FFAppState().numTrialsDone =
                                                  FFAppState().numTrialsDone -
                                                      1;
                                            }
                                            if (FFAppState().problemInfo.num1 ==
                                                FFAppState()
                                                    .problemInfo
                                                    .correctNum) {
                                              setState(() {
                                                FFAppState().questionFinish =
                                                    getCurrentTimestamp;
                                                FFAppState().coins =
                                                    FFAppState().coins + 1;
                                                FFAppState()
                                                        .questionFirstResponse =
                                                    getCurrentTimestamp;
                                                FFAppState().curProblemIndex =
                                                    FFAppState()
                                                            .curProblemIndex +
                                                        1;
                                                FFAppState()
                                                    .gotQuestionCorrect = true;
                                                FFAppState().numCorrect =
                                                    FFAppState().numCorrect + 1;
                                                FFAppState()
                                                        .totalSessionNumCorrect =
                                                    FFAppState()
                                                            .totalSessionNumCorrect +
                                                        1;
                                              });

                                              await _model.newLog!.reference
                                                  .update(
                                                      createProblemLogsRecordData(
                                                correct: 1,
                                                firstResponseTime:
                                                    functions.getTimeDifference(
                                                        FFAppState()
                                                            .questionStart,
                                                        FFAppState()
                                                            .questionFirstResponse),
                                              ));

                                              await _model
                                                  .newLog!.parentReference
                                                  .update({
                                                'numCorrect':
                                                    FieldValue.increment(1),
                                                'numQuestionsAnswered':
                                                    FieldValue.increment(1),
                                                'sessionResponseTime':
                                                    FieldValue.increment(functions
                                                        .getTimeDifference(
                                                            FFAppState()
                                                                .questionStart,
                                                            FFAppState()
                                                                .questionFinish)!),
                                                'accuracy': FFAppState()
                                                        .totalSessionNumCorrect /
                                                    FFAppState()
                                                        .totalSessionQuestionsAnswered,
                                              });
                                            } else {
                                              if (FFAppState().curProblemIndex <
                                                  FFAppState()
                                                      .numInitialQuestions) {
                                                setState(() {
                                                  FFAppState().addToSessionQuestions(
                                                      FFAppState()
                                                              .sessionQuestions[
                                                          FFAppState()
                                                              .curProblemIndex]);
                                                });
                                              }
                                              setState(() {
                                                FFAppState()
                                                        .questionFirstResponse =
                                                    getCurrentTimestamp;
                                                FFAppState().curProblemIndex =
                                                    FFAppState()
                                                            .curProblemIndex +
                                                        1;
                                                FFAppState()
                                                    .gotQuestionCorrect = false;
                                              });

                                              await _model.newLog!.reference
                                                  .update(
                                                      createProblemLogsRecordData(
                                                correct: 0,
                                                firstResponseTime:
                                                    functions.getTimeDifference(
                                                        FFAppState()
                                                            .questionStart,
                                                        FFAppState()
                                                            .questionFirstResponse),
                                              ));

                                              await _model
                                                  .newLog!.parentReference
                                                  .update({
                                                'numQuestionsAnswered':
                                                    FieldValue.increment(1),
                                                'sessionResponseTime':
                                                    FieldValue.increment(functions
                                                        .getTimeDifference(
                                                            FFAppState()
                                                                .questionStart,
                                                            FFAppState()
                                                                .questionFirstResponse)!),
                                                'accuracy': FFAppState()
                                                        .totalSessionNumCorrect /
                                                    FFAppState()
                                                        .totalSessionQuestionsAnswered,
                                              });
                                              if (FFAppState()
                                                      .problemInfo
                                                      .num1 ==
                                                  FFAppState()
                                                      .problemInfo
                                                      .correctNum) {
                                                if (animationsMap[
                                                        'containerOnActionTriggerAnimation1'] !=
                                                    null) {
                                                  await animationsMap[
                                                          'containerOnActionTriggerAnimation1']!
                                                      .controller
                                                    ..reset()
                                                    ..repeat(reverse: true);
                                                }
                                              } else if (FFAppState()
                                                      .problemInfo
                                                      .num2 ==
                                                  FFAppState()
                                                      .problemInfo
                                                      .correctNum) {
                                                if (animationsMap[
                                                        'containerOnActionTriggerAnimation2'] !=
                                                    null) {
                                                  await animationsMap[
                                                          'containerOnActionTriggerAnimation2']!
                                                      .controller
                                                    ..reset()
                                                    ..repeat(reverse: true);
                                                }
                                              } else {
                                                if (animationsMap[
                                                        'containerOnActionTriggerAnimation3'] !=
                                                    null) {
                                                  await animationsMap[
                                                          'containerOnActionTriggerAnimation3']!
                                                      .controller
                                                    ..reset()
                                                    ..repeat(reverse: true);
                                                }
                                              }
                                            }
                                          }
                                        },
                                        child: Container(
                                          width: 142.0,
                                          height: 200.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .offWhite,
                                          ),
                                          child: Stack(
                                            children: [
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(0.0),
                                                child: Image.asset(
                                                  'assets/images/card_${functions.convertSymbolicToDotNum(FFAppState().problemInfo.num1Symbolic)}${functions.convertValueToTwoDigit(FFAppState().problemInfo.num1)}.png',
                                                  width: double.infinity,
                                                  height: double.infinity,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ).animateOnActionTrigger(
                                        animationsMap[
                                            'containerOnActionTriggerAnimation1']!,
                                      ),
                                    ),
                                    Align(
                                      alignment:
                                          AlignmentDirectional(-0.77, -0.8),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          if (!FFAppState().answeredQuestion) {
                                            setState(() {
                                              FFAppState().answeredQuestion =
                                                  true;
                                              FFAppState().numTrialsDone =
                                                  FFAppState().numTrialsDone +
                                                      1;
                                              FFAppState()
                                                      .totalSessionQuestionsAnswered =
                                                  FFAppState()
                                                          .totalSessionQuestionsAnswered +
                                                      1;
                                            });
                                            if (FFAppState().curProblemIndex >
                                                FFAppState()
                                                    .numInitialQuestions) {
                                              FFAppState().numTrialsDone =
                                                  FFAppState().numTrialsDone -
                                                      1;
                                            }
                                            if (FFAppState().problemInfo.num2 ==
                                                FFAppState()
                                                    .problemInfo
                                                    .correctNum) {
                                              setState(() {
                                                FFAppState().questionFinish =
                                                    getCurrentTimestamp;
                                                FFAppState().coins =
                                                    FFAppState().coins + 1;
                                                FFAppState()
                                                        .questionFirstResponse =
                                                    getCurrentTimestamp;
                                                FFAppState().curProblemIndex =
                                                    FFAppState()
                                                            .curProblemIndex +
                                                        1;
                                                FFAppState()
                                                    .gotQuestionCorrect = true;
                                                FFAppState().numCorrect =
                                                    FFAppState().numCorrect + 1;
                                                FFAppState()
                                                        .totalSessionNumCorrect =
                                                    FFAppState()
                                                            .totalSessionNumCorrect +
                                                        1;
                                              });

                                              await _model.newLog!.reference
                                                  .update(
                                                      createProblemLogsRecordData(
                                                correct: 1,
                                                firstResponseTime:
                                                    functions.getTimeDifference(
                                                        FFAppState()
                                                            .questionStart,
                                                        FFAppState()
                                                            .questionFirstResponse),
                                              ));

                                              await _model
                                                  .newLog!.parentReference
                                                  .update({
                                                'numCorrect':
                                                    FieldValue.increment(1),
                                                'numQuestionsAnswered':
                                                    FieldValue.increment(1),
                                                'sessionResponseTime':
                                                    FieldValue.increment(functions
                                                        .getTimeDifference(
                                                            FFAppState()
                                                                .questionStart,
                                                            FFAppState()
                                                                .questionFinish)!),
                                                'accuracy': FFAppState()
                                                        .totalSessionNumCorrect /
                                                    FFAppState()
                                                        .totalSessionQuestionsAnswered,
                                              });
                                            } else {
                                              if (FFAppState().curProblemIndex <
                                                  FFAppState()
                                                      .numInitialQuestions) {
                                                setState(() {
                                                  FFAppState().addToSessionQuestions(
                                                      FFAppState()
                                                              .sessionQuestions[
                                                          FFAppState()
                                                              .curProblemIndex]);
                                                });
                                              }
                                              setState(() {
                                                FFAppState()
                                                        .questionFirstResponse =
                                                    getCurrentTimestamp;
                                                FFAppState().curProblemIndex =
                                                    FFAppState()
                                                            .curProblemIndex +
                                                        1;
                                                FFAppState()
                                                    .gotQuestionCorrect = false;
                                              });

                                              await _model.newLog!.reference
                                                  .update(
                                                      createProblemLogsRecordData(
                                                correct: 0,
                                                firstResponseTime:
                                                    functions.getTimeDifference(
                                                        FFAppState()
                                                            .questionStart,
                                                        FFAppState()
                                                            .questionFirstResponse),
                                              ));

                                              await _model
                                                  .newLog!.parentReference
                                                  .update({
                                                'numQuestionsAnswered':
                                                    FieldValue.increment(1),
                                                'sessionResponseTime':
                                                    FieldValue.increment(functions
                                                        .getTimeDifference(
                                                            FFAppState()
                                                                .questionStart,
                                                            FFAppState()
                                                                .questionFirstResponse)!),
                                                'accuracy': FFAppState()
                                                        .totalSessionNumCorrect /
                                                    FFAppState()
                                                        .totalSessionQuestionsAnswered,
                                              });
                                              if (FFAppState()
                                                      .problemInfo
                                                      .num1 ==
                                                  FFAppState()
                                                      .problemInfo
                                                      .correctNum) {
                                                if (animationsMap[
                                                        'containerOnActionTriggerAnimation1'] !=
                                                    null) {
                                                  await animationsMap[
                                                          'containerOnActionTriggerAnimation1']!
                                                      .controller
                                                    ..reset()
                                                    ..repeat(reverse: true);
                                                }
                                              } else if (FFAppState()
                                                      .problemInfo
                                                      .num2 ==
                                                  FFAppState()
                                                      .problemInfo
                                                      .correctNum) {
                                                if (animationsMap[
                                                        'containerOnActionTriggerAnimation2'] !=
                                                    null) {
                                                  await animationsMap[
                                                          'containerOnActionTriggerAnimation2']!
                                                      .controller
                                                    ..reset()
                                                    ..repeat(reverse: true);
                                                }
                                              } else {
                                                if (animationsMap[
                                                        'containerOnActionTriggerAnimation3'] !=
                                                    null) {
                                                  await animationsMap[
                                                          'containerOnActionTriggerAnimation3']!
                                                      .controller
                                                    ..reset()
                                                    ..repeat(reverse: true);
                                                }
                                              }
                                            }
                                          }
                                        },
                                        child: Container(
                                          width: 142.0,
                                          height: 200.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .offWhite,
                                          ),
                                          child: Stack(
                                            children: [
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(0.0),
                                                child: Image.asset(
                                                  'assets/images/card_${functions.convertSymbolicToDotNum(FFAppState().problemInfo.num2Symbolic)}${functions.convertValueToTwoDigit(FFAppState().problemInfo.num2)}.png',
                                                  width: 300.0,
                                                  height: 200.0,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ).animateOnActionTrigger(
                                        animationsMap[
                                            'containerOnActionTriggerAnimation2']!,
                                      ),
                                    ),
                                    Align(
                                      alignment:
                                          AlignmentDirectional(-0.77, -0.8),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          if (!FFAppState().answeredQuestion) {
                                            setState(() {
                                              FFAppState().answeredQuestion =
                                                  true;
                                              FFAppState().numTrialsDone =
                                                  FFAppState().numTrialsDone +
                                                      1;
                                              FFAppState()
                                                      .totalSessionQuestionsAnswered =
                                                  FFAppState()
                                                          .totalSessionQuestionsAnswered +
                                                      1;
                                            });
                                            if (FFAppState().curProblemIndex >
                                                FFAppState()
                                                    .numInitialQuestions) {
                                              FFAppState().numTrialsDone =
                                                  FFAppState().numTrialsDone -
                                                      1;
                                            }
                                            if (FFAppState().problemInfo.num3 ==
                                                FFAppState()
                                                    .problemInfo
                                                    .correctNum) {
                                              setState(() {
                                                FFAppState().questionFinish =
                                                    getCurrentTimestamp;
                                                FFAppState().coins =
                                                    FFAppState().coins + 1;
                                                FFAppState()
                                                        .questionFirstResponse =
                                                    getCurrentTimestamp;
                                                FFAppState().curProblemIndex =
                                                    FFAppState()
                                                            .curProblemIndex +
                                                        1;
                                                FFAppState()
                                                    .gotQuestionCorrect = true;
                                                FFAppState().numCorrect =
                                                    FFAppState().numCorrect + 1;
                                                FFAppState()
                                                        .totalSessionNumCorrect =
                                                    FFAppState()
                                                            .totalSessionNumCorrect +
                                                        1;
                                              });

                                              await _model.newLog!.reference
                                                  .update(
                                                      createProblemLogsRecordData(
                                                correct: 1,
                                                firstResponseTime:
                                                    functions.getTimeDifference(
                                                        FFAppState()
                                                            .questionStart,
                                                        FFAppState()
                                                            .questionFirstResponse),
                                              ));

                                              await _model
                                                  .newLog!.parentReference
                                                  .update({
                                                'numCorrect':
                                                    FieldValue.increment(1),
                                                'numQuestionsAnswered':
                                                    FieldValue.increment(1),
                                                'sessionResponseTime':
                                                    FieldValue.increment(functions
                                                        .getTimeDifference(
                                                            FFAppState()
                                                                .questionStart,
                                                            FFAppState()
                                                                .questionFinish)!),
                                                'accuracy': FFAppState()
                                                        .totalSessionNumCorrect /
                                                    FFAppState()
                                                        .totalSessionQuestionsAnswered,
                                              });
                                            } else {
                                              if (FFAppState().curProblemIndex <
                                                  FFAppState()
                                                      .numInitialQuestions) {
                                                setState(() {
                                                  FFAppState().addToSessionQuestions(
                                                      FFAppState()
                                                              .sessionQuestions[
                                                          FFAppState()
                                                              .curProblemIndex]);
                                                });
                                              }
                                              setState(() {
                                                FFAppState()
                                                        .questionFirstResponse =
                                                    getCurrentTimestamp;
                                                FFAppState().curProblemIndex =
                                                    FFAppState()
                                                            .curProblemIndex +
                                                        1;
                                                FFAppState()
                                                    .gotQuestionCorrect = false;
                                              });

                                              await _model.newLog!.reference
                                                  .update(
                                                      createProblemLogsRecordData(
                                                correct: 0,
                                                firstResponseTime:
                                                    functions.getTimeDifference(
                                                        FFAppState()
                                                            .questionStart,
                                                        FFAppState()
                                                            .questionFirstResponse),
                                              ));

                                              await _model
                                                  .newLog!.parentReference
                                                  .update({
                                                'numQuestionsAnswered':
                                                    FieldValue.increment(1),
                                                'sessionResponseTime':
                                                    FieldValue.increment(functions
                                                        .getTimeDifference(
                                                            FFAppState()
                                                                .questionStart,
                                                            FFAppState()
                                                                .questionFirstResponse)!),
                                                'accuracy': FFAppState()
                                                        .totalSessionNumCorrect /
                                                    FFAppState()
                                                        .totalSessionQuestionsAnswered,
                                              });
                                              if (FFAppState()
                                                      .problemInfo
                                                      .num1 ==
                                                  FFAppState()
                                                      .problemInfo
                                                      .correctNum) {
                                                if (animationsMap[
                                                        'containerOnActionTriggerAnimation1'] !=
                                                    null) {
                                                  await animationsMap[
                                                          'containerOnActionTriggerAnimation1']!
                                                      .controller
                                                    ..reset()
                                                    ..repeat(reverse: true);
                                                }
                                              } else if (FFAppState()
                                                      .problemInfo
                                                      .num2 ==
                                                  FFAppState()
                                                      .problemInfo
                                                      .correctNum) {
                                                if (animationsMap[
                                                        'containerOnActionTriggerAnimation2'] !=
                                                    null) {
                                                  await animationsMap[
                                                          'containerOnActionTriggerAnimation2']!
                                                      .controller
                                                    ..reset()
                                                    ..repeat(reverse: true);
                                                }
                                              } else {
                                                if (animationsMap[
                                                        'containerOnActionTriggerAnimation3'] !=
                                                    null) {
                                                  await animationsMap[
                                                          'containerOnActionTriggerAnimation3']!
                                                      .controller
                                                    ..reset()
                                                    ..repeat(reverse: true);
                                                }
                                              }
                                            }
                                          }
                                        },
                                        child: Container(
                                          width: 142.0,
                                          height: 200.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .offWhite,
                                          ),
                                          child: Stack(
                                            children: [
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(0.0),
                                                child: Image.asset(
                                                  'assets/images/card_${functions.convertSymbolicToDotNum(FFAppState().problemInfo.num3Symbolic)}${functions.convertValueToTwoDigit(FFAppState().problemInfo.num3)}.png',
                                                  width: 300.0,
                                                  height: 200.0,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ).animateOnActionTrigger(
                                        animationsMap[
                                            'containerOnActionTriggerAnimation3']!,
                                      ),
                                    ),
                                  ],
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0.0, 1.1),
                                  child: Container(
                                    width: 142.0,
                                    height: 200.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .lightBlue,
                                    ),
                                    child: Stack(
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(0.0),
                                          child: Image.asset(
                                            'assets/images/card_${functions.convertSymbolicToDotNum(FFAppState().problemInfo.targetNumSymbolic)}${functions.convertValueToTwoDigit(FFAppState().problemInfo.targetNum)}.png',
                                            width: 300.0,
                                            height: 200.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(1.11, 1.21),
                    child: Container(
                      width: 225.0,
                      height: 300.0,
                      decoration: BoxDecoration(),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/images/${FFAppState().curAnimal}.png',
                          width: 300.0,
                          height: 200.0,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.95),
                    child: Container(
                      width: double.infinity,
                      height: 140.0,
                      decoration: BoxDecoration(),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          if (FFAppState().answeredQuestion) {
                            context.pushNamed(
                              'play_1',
                              extra: <String, dynamic>{
                                kTransitionInfoKey: TransitionInfo(
                                  hasTransition: true,
                                  transitionType: PageTransitionType.fade,
                                  duration: Duration(milliseconds: 0),
                                ),
                              },
                            );
                          }
                        },
                        child: wrapWithModel(
                          model: _model.speechBubbleModel,
                          updateCallback: () => setState(() {}),
                          child: SpeechBubbleWidget(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

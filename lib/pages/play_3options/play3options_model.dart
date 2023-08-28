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

class Play3optionsModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - Create Document] action in play_3options widget.
  ProblemLogsRecord? newLog;
  // Model for speechBubble component.
  late SpeechBubbleModel speechBubbleModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    speechBubbleModel = createModel(context, () => SpeechBubbleModel());
  }

  void dispose() {
    unfocusNode.dispose();
    speechBubbleModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

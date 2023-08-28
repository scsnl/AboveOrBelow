import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'speech_bubble_model.dart';
export 'speech_bubble_model.dart';

class SpeechBubbleWidget extends StatefulWidget {
  const SpeechBubbleWidget({Key? key}) : super(key: key);

  @override
  _SpeechBubbleWidgetState createState() => _SpeechBubbleWidgetState();
}

class _SpeechBubbleWidgetState extends State<SpeechBubbleWidget> {
  late SpeechBubbleModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SpeechBubbleModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
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
    });
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Container(
        width: 748.0,
        height: 140.0,
        child: Stack(
          children: [
            if (!FFAppState().answeredQuestion)
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      'assets/images/Group_7044.png',
                      width: double.infinity,
                      height: double.infinity,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  Container(
                    width: 700.0,
                    height: 140.0,
                    decoration: BoxDecoration(),
                    child: Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Text(
                        FFAppState().problemInfo.questionIsBelow
                            ? 'Which card is exactly one less than the bottom card?'
                            : 'Which card is exactly one greater than the bottom card?',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Comic Sans',
                              color: Color(0xFF4D4D4D),
                              fontSize: 34.0,
                              fontWeight: FontWeight.bold,
                              useGoogleFonts: false,
                            ),
                      ),
                    ),
                  ),
                ],
              ),
            if (FFAppState().answeredQuestion)
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      'assets/images/Group_7044.png',
                      width: double.infinity,
                      height: double.infinity,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  Container(
                    width: 700.0,
                    height: 140.0,
                    decoration: BoxDecoration(),
                    child: Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Text(
                        FFAppState().gotQuestionCorrect
                            ? 'Nice Job! Tap on this speech bubble to continue.'
                            : functions.generateIncorrectFeedbackText(
                                FFAppState().problemInfo.correctNum),
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Comic Sans',
                              color: Color(0xFF4D4D4D),
                              fontSize: 34.0,
                              fontWeight: FontWeight.bold,
                              useGoogleFonts: false,
                            ),
                      ),
                    ),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}

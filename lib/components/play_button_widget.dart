import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'play_button_model.dart';
export 'play_button_model.dart';

class PlayButtonWidget extends StatefulWidget {
  const PlayButtonWidget({Key? key}) : super(key: key);

  @override
  _PlayButtonWidgetState createState() => _PlayButtonWidgetState();
}

class _PlayButtonWidgetState extends State<PlayButtonWidget> {
  late PlayButtonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PlayButtonModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return FFButtonWidget(
      onPressed: () {
        print('Button pressed ...');
      },
      text: 'Play',
      options: FFButtonOptions(
        height: 55.0,
        padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
        iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
        color: Color(0xFFF0A573),
        textStyle: FlutterFlowTheme.of(context).titleSmall.override(
              fontFamily: 'Montserrat',
              color: Colors.white,
              fontSize: 30.0,
              letterSpacing: 1.0,
              fontWeight: FontWeight.bold,
            ),
        elevation: 3.0,
        borderSide: BorderSide(
          color: Colors.transparent,
          width: 0.0,
        ),
        borderRadius: BorderRadius.circular(134.0),
      ),
    );
  }
}

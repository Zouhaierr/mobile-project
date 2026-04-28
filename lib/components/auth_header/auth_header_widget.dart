import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'auth_header_model.dart';
export 'auth_header_model.dart';

class AuthHeaderWidget extends StatefulWidget {
  const AuthHeaderWidget({
    super.key,
    String? subtitle,
    String? title,
  })  : this.subtitle =
            subtitle ?? 'Your collaborative learning workspace starts here.',
        this.title = title ?? 'Study Companion';

  final String subtitle;
  final String title;

  @override
  State<AuthHeaderWidget> createState() => _AuthHeaderWidgetState();
}

class _AuthHeaderWidgetState extends State<AuthHeaderWidget> {
  late AuthHeaderModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AuthHeaderModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          valueOrDefault<String>(
            widget.title,
            'Study Companion',
          ),
          style: FlutterFlowTheme.of(context).headlineLarge.override(
                font: GoogleFonts.plusJakartaSans(
                  fontWeight: FontWeight.w800,
                  fontStyle:
                      FlutterFlowTheme.of(context).headlineLarge.fontStyle,
                ),
                color: FlutterFlowTheme.of(context).primaryText,
                letterSpacing: 0.0,
                fontWeight: FontWeight.w800,
                fontStyle: FlutterFlowTheme.of(context).headlineLarge.fontStyle,
                lineHeight: 1.2,
              ),
        ),
        Text(
          valueOrDefault<String>(
            widget.subtitle,
            'Your collaborative learning workspace starts here.',
          ),
          style: FlutterFlowTheme.of(context).bodyLarge.override(
                font: GoogleFonts.inter(
                  fontWeight: FlutterFlowTheme.of(context).bodyLarge.fontWeight,
                  fontStyle: FlutterFlowTheme.of(context).bodyLarge.fontStyle,
                ),
                color: FlutterFlowTheme.of(context).secondaryText,
                letterSpacing: 0.0,
                fontWeight: FlutterFlowTheme.of(context).bodyLarge.fontWeight,
                fontStyle: FlutterFlowTheme.of(context).bodyLarge.fontStyle,
                lineHeight: 1.5,
              ),
        ),
      ].divide(SizedBox(height: 8.0)),
    );
  }
}

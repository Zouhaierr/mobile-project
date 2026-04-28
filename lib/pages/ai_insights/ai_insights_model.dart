import '/flutter_flow/flutter_flow_util.dart';
import 'ai_insights_widget.dart' show AiInsightsWidget;
import 'package:flutter/material.dart';

class AiInsightsModel extends FlutterFlowModel<AiInsightsWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}

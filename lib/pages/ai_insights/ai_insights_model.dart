import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'ai_insights_widget.dart' show AiInsightsWidget;
import 'package:flutter/material.dart';

class AiInsightsModel extends FlutterFlowModel<AiInsightsWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  String? _textControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Notes  obligatoire ';
    }

    if (val.length < 20) {
      return 'minimum 20 ';
    }
    if (val.length > 200) {
      return 'maximum 200';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    textControllerValidator = _textControllerValidator;
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}

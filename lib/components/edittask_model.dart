import '/components/edittask_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'edittask_widget.dart' show EdittaskWidget;
import 'package:flutter/material.dart';

class EdittaskModel extends FlutterFlowModel<EdittaskWidget> {
  ///  State fields for stateful widgets in this component.

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

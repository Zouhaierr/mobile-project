import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'taskdetails_widget.dart' show TaskdetailsWidget;
import 'package:flutter/material.dart';

class TaskdetailsModel extends FlutterFlowModel<TaskdetailsWidget> {
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

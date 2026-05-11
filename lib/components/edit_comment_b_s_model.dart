import '/flutter_flow/flutter_flow_util.dart';
import 'edit_comment_b_s_widget.dart' show EditCommentBSWidget;
import 'package:flutter/material.dart';

class EditCommentBSModel extends FlutterFlowModel<EditCommentBSWidget> {
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

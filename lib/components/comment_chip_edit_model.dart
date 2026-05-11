import '/flutter_flow/flutter_flow_util.dart';
import 'comment_chip_edit_widget.dart' show CommentChipEditWidget;
import 'package:flutter/material.dart';

class CommentChipEditModel extends FlutterFlowModel<CommentChipEditWidget> {
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

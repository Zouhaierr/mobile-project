import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'join_classroom_widget.dart' show JoinClassroomWidget;
import 'package:flutter/material.dart';

class JoinClassroomModel extends FlutterFlowModel<JoinClassroomWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for Joincode widget.
  FocusNode? joincodeFocusNode;
  TextEditingController? joincodeTextController;
  String? Function(BuildContext, String?)? joincodeTextControllerValidator;
  String? _joincodeTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return '8-character code from your teacher is required';
    }

    if (val.length < 8) {
      return 'Requires at least 8 characters.';
    }
    if (val.length > 8) {
      return 'Maximum 8 characters allowed, currently ${val.length}.';
    }

    return null;
  }

  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  GroupRecord? foundClassroom;

  @override
  void initState(BuildContext context) {
    joincodeTextControllerValidator = _joincodeTextControllerValidator;
  }

  @override
  void dispose() {
    joincodeFocusNode?.dispose();
    joincodeTextController?.dispose();
  }
}

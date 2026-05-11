import '/components/bottomnav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'classroomcreate_widget.dart' show ClassroomcreateWidget;
import 'package:flutter/material.dart';

class ClassroomcreateModel extends FlutterFlowModel<ClassroomcreateWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for groupname widget.
  FocusNode? groupnameFocusNode;
  TextEditingController? groupnameTextController;
  String? Function(BuildContext, String?)? groupnameTextControllerValidator;
  String? _groupnameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'group is required';
    }

    if (val.length < 1) {
      return '1';
    }
    if (val.length > 50) {
      return '50';
    }
    if (!RegExp('^(?!\\s*\$).+').hasMatch(val)) {
      return 'Invalid text';
    }
    return null;
  }

  // State field(s) for description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionTextController;
  String? Function(BuildContext, String?)? descriptionTextControllerValidator;
  String? _descriptionTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'description is required';
    }

    if (val.length < 1) {
      return '1';
    }
    if (val.length > 50) {
      return '50';
    }
    if (!RegExp('^(?!\\s*\$).+').hasMatch(val)) {
      return 'Invalid text';
    }
    return null;
  }

  // Model for bottomnav component.
  late BottomnavModel bottomnavModel;

  @override
  void initState(BuildContext context) {
    groupnameTextControllerValidator = _groupnameTextControllerValidator;
    descriptionTextControllerValidator = _descriptionTextControllerValidator;
    bottomnavModel = createModel(context, () => BottomnavModel());
  }

  @override
  void dispose() {
    groupnameFocusNode?.dispose();
    groupnameTextController?.dispose();

    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();

    bottomnavModel.dispose();
  }
}

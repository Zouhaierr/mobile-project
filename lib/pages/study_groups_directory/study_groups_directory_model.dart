import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'study_groups_directory_widget.dart' show StudyGroupsDirectoryWidget;
import 'package:flutter/material.dart';

class StudyGroupsDirectoryModel
    extends FlutterFlowModel<StudyGroupsDirectoryWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for groupname widget.
  FocusNode? groupnameFocusNode;
  TextEditingController? groupnameTextController;
  String? Function(BuildContext, String?)? groupnameTextControllerValidator;
  // State field(s) for description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionTextController;
  String? Function(BuildContext, String?)? descriptionTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    groupnameFocusNode?.dispose();
    groupnameTextController?.dispose();

    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();
  }
}

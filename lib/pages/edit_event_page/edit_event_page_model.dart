import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'edit_event_page_widget.dart' show EditEventPageWidget;
import 'package:flutter/material.dart';

class EditEventPageModel extends FlutterFlowModel<EditEventPageWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for titre widget.
  FocusNode? titreFocusNode;
  TextEditingController? titreTextController;
  String? Function(BuildContext, String?)? titreTextControllerValidator;
  String? _titreTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'titrre obligqtoire';
    }

    if (val.length < 4) {
      return 'minimum 3 ';
    }
    if (val.length > 30) {
      return 'maximum 30 ';
    }
    if (!RegExp('^(?!\\s*\$).+').hasMatch(val)) {
      return 'The input must contain at least one real (non-space) character.';
    }
    return null;
  }

  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // State field(s) for desc widget.
  FocusNode? descFocusNode;
  TextEditingController? descTextController;
  String? Function(BuildContext, String?)? descTextControllerValidator;
  String? _descTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Describe  s required';
    }

    if (val.length < 0) {
      return 'Requires at least 0 characters.';
    }
    if (val.length > 500) {
      return 'Maximum 500 characters allowed, currently ${val.length}.';
    }
    if (!RegExp('^(?!\\s*\$).+').hasMatch(val)) {
      return 'The input must contain at least one real (non-space) character.';
    }
    return null;
  }

  DateTime? datePicked1;
  DateTime? datePicked2;
  DateTime? datePicked3;

  @override
  void initState(BuildContext context) {
    titreTextControllerValidator = _titreTextControllerValidator;
    descTextControllerValidator = _descTextControllerValidator;
  }

  @override
  void dispose() {
    titreFocusNode?.dispose();
    titreTextController?.dispose();

    descFocusNode?.dispose();
    descTextController?.dispose();
  }
}

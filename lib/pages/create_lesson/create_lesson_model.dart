import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'create_lesson_widget.dart' show CreateLessonWidget;
import 'package:flutter/material.dart';

class CreateLessonModel extends FlutterFlowModel<CreateLessonWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  String? _textController1Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Enter lesson title is required';
    }

    if (val.length < 1) {
      return '2';
    }
    if (val.length > 50) {
      return '50';
    }
    if (!RegExp('^(?!\\s*\$).+').hasMatch(val)) {
      return 'Invalid text';
    }
    return null;
  }

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  String? _textController2Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Enter subject is required';
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

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  String? _textController3Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Enter description is required';
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

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  String? _textController4Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Enter category is required';
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

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode5;
  TextEditingController? textController5;
  String? Function(BuildContext, String?)? textController5Validator;
  String? _textController5Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'e.g. Beginner, Intermediate, Advanced is required';
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

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode6;
  TextEditingController? textController6;
  String? Function(BuildContext, String?)? textController6Validator;
  String? _textController6Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'DD/MM/YYYY HH:MM is required';
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

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode7;
  TextEditingController? textController7;
  String? Function(BuildContext, String?)? textController7Validator;
  String? _textController7Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'e.g. 60 is required';
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

  @override
  void initState(BuildContext context) {
    textController1Validator = _textController1Validator;
    textController2Validator = _textController2Validator;
    textController3Validator = _textController3Validator;
    textController4Validator = _textController4Validator;
    textController5Validator = _textController5Validator;
    textController6Validator = _textController6Validator;
    textController7Validator = _textController7Validator;
  }

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    textFieldFocusNode3?.dispose();
    textController3?.dispose();

    textFieldFocusNode4?.dispose();
    textController4?.dispose();

    textFieldFocusNode5?.dispose();
    textController5?.dispose();

    textFieldFocusNode6?.dispose();
    textController6?.dispose();

    textFieldFocusNode7?.dispose();
    textController7?.dispose();
  }
}

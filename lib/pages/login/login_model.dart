import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for email1 widget.
  FocusNode? email1FocusNode;
  TextEditingController? email1TextController;
  String? Function(BuildContext, String?)? email1TextControllerValidator;
  String? _email1TextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'your@email.com is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for password2 widget.
  FocusNode? password2FocusNode;
  TextEditingController? password2TextController;
  late bool password2Visibility;
  String? Function(BuildContext, String?)? password2TextControllerValidator;
  String? _password2TextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return '•••••••• is required';
    }

    if (val.length < 8) {
      return '8 caracters only';
    }
    if (val.length > 8) {
      return '8 caracters only';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    email1TextControllerValidator = _email1TextControllerValidator;
    password2Visibility = false;
    password2TextControllerValidator = _password2TextControllerValidator;
  }

  @override
  void dispose() {
    email1FocusNode?.dispose();
    email1TextController?.dispose();

    password2FocusNode?.dispose();
    password2TextController?.dispose();
  }
}

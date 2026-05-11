import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'article_page_update_widget.dart' show ArticlePageUpdateWidget;
import 'package:flutter/material.dart';

class ArticlePageUpdateModel extends FlutterFlowModel<ArticlePageUpdateWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for title widget.
  final titleKey = GlobalKey();
  FocusNode? titleFocusNode;
  TextEditingController? titleTextController;
  String? titleSelectedOption;
  String? Function(BuildContext, String?)? titleTextControllerValidator;
  String? _titleTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Title.. is required';
    }
    if (val != titleSelectedOption) {
      return 'Please choose an option from the dropdown';
    }
    if (val.length < 3) {
      return 'minimum 3';
    }
    if (val.length > 20) {
      return 'maximum 20';
    }
    if (!RegExp('^(?!\\s*\$).+').hasMatch(val)) {
      return 'The input must contain at least one real (non-space) character.';
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
      return 'Description... is required';
    }

    if (val.length < 20) {
      return 'minimum 20';
    }
    if (val.length > 100) {
      return 'maximum 100';
    }
    if (!RegExp('^(?!\\s*\$).+').hasMatch(val)) {
      return 'The input must contain at least one real (non-space) character.';
    }
    return null;
  }

  // State field(s) for summarize widget.
  FocusNode? summarizeFocusNode;
  TextEditingController? summarizeTextController;
  String? Function(BuildContext, String?)? summarizeTextControllerValidator;
  String? _summarizeTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'summarize.. is required';
    }

    if (val.length < 10) {
      return 'Requires at least 10 characters.';
    }

    if (!RegExp('^(?!\\s*\$).+').hasMatch(val)) {
      return 'The input must contain at least one real (non-space) character.';
    }
    return null;
  }

  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];

  @override
  void initState(BuildContext context) {
    titleTextControllerValidator = _titleTextControllerValidator;
    descriptionTextControllerValidator = _descriptionTextControllerValidator;
    summarizeTextControllerValidator = _summarizeTextControllerValidator;
  }

  @override
  void dispose() {
    titleFocusNode?.dispose();

    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();

    summarizeFocusNode?.dispose();
    summarizeTextController?.dispose();
  }
}

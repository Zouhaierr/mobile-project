import '/components/filter_chip2/filter_chip2_widget.dart';
import '/components/question_card_post/question_card_post_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'question_page_widget.dart' show QuestionPageWidget;
import 'package:flutter/material.dart';

class QuestionPageModel extends FlutterFlowModel<QuestionPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for back.
  late FilterChip2Model backModel;
  // Model for QuestionCardPost component.
  late QuestionCardPostModel questionCardPostModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {
    backModel = createModel(context, () => FilterChip2Model());
    questionCardPostModel = createModel(context, () => QuestionCardPostModel());
  }

  @override
  void dispose() {
    backModel.dispose();
    questionCardPostModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}

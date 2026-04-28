import '/components/answer_section/answer_section_widget.dart';
import '/components/filter_chip2/filter_chip2_widget.dart';
import '/components/post_card/post_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'question_page_widget.dart' show QuestionPageWidget;
import 'package:flutter/material.dart';

class QuestionPageModel extends FlutterFlowModel<QuestionPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for back.
  late FilterChip2Model backModel;
  // Model for PostCard.
  late PostCardModel postCardModel;
  // Model for answerSection component.
  late AnswerSectionModel answerSectionModel;

  @override
  void initState(BuildContext context) {
    backModel = createModel(context, () => FilterChip2Model());
    postCardModel = createModel(context, () => PostCardModel());
    answerSectionModel = createModel(context, () => AnswerSectionModel());
  }

  @override
  void dispose() {
    backModel.dispose();
    postCardModel.dispose();
    answerSectionModel.dispose();
  }
}

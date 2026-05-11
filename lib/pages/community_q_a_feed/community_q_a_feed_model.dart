import '/components/filter_chip2/filter_chip2_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'community_q_a_feed_widget.dart' show CommunityQAFeedWidget;
import 'package:flutter/material.dart';

class CommunityQAFeedModel extends FlutterFlowModel<CommunityQAFeedWidget> {
  ///  Local state fields for this page.

  bool isExpanded = false;

  ///  State fields for stateful widgets in this page.

  // Model for FilterChip2.
  late FilterChip2Model filterChip2Model;
  // Model for articles.
  late FilterChip2Model articlesModel;
  // Model for questions.
  late FilterChip2Model questionsModel;

  @override
  void initState(BuildContext context) {
    filterChip2Model = createModel(context, () => FilterChip2Model());
    articlesModel = createModel(context, () => FilterChip2Model());
    questionsModel = createModel(context, () => FilterChip2Model());
  }

  @override
  void dispose() {
    filterChip2Model.dispose();
    articlesModel.dispose();
    questionsModel.dispose();
  }
}

import '/components/article_card_post/article_card_post_widget.dart';
import '/components/filter_chip2/filter_chip2_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'article_page_widget.dart' show ArticlePageWidget;
import 'package:flutter/material.dart';

class ArticlePageModel extends FlutterFlowModel<ArticlePageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for back.
  late FilterChip2Model backModel;
  // Model for ArticleCardPost component.
  late ArticleCardPostModel articleCardPostModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {
    backModel = createModel(context, () => FilterChip2Model());
    articleCardPostModel = createModel(context, () => ArticleCardPostModel());
  }

  @override
  void dispose() {
    backModel.dispose();
    articleCardPostModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}

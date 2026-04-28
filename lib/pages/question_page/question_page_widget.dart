import '/components/answer_section/answer_section_widget.dart';
import '/components/filter_chip2/filter_chip2_widget.dart';
import '/components/post_card/post_card_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'question_page_model.dart';
export 'question_page_model.dart';

class QuestionPageWidget extends StatefulWidget {
  const QuestionPageWidget({super.key});

  static String routeName = 'QuestionPage';
  static String routePath = '/questionPage';

  @override
  State<QuestionPageWidget> createState() => _QuestionPageWidgetState();
}

class _QuestionPageWidgetState extends State<QuestionPageWidget> {
  late QuestionPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => QuestionPageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      body: SafeArea(
        top: true,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Align(
                    alignment: AlignmentDirectional(-1.0, 0.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.safePop();
                      },
                      child: wrapWithModel(
                        model: _model.backModel,
                        updateCallback: () => safeSetState(() {}),
                        child: FilterChip2Widget(
                          chip_id: 'cat4',
                          label: 'Back to feed',
                          selected: false,
                        ),
                      ),
                    ),
                  ),
                  wrapWithModel(
                    model: _model.postCardModel,
                    updateCallback: () => safeSetState(() {}),
                    child: PostCardWidget(
                      author: 'James Smith',
                      avatar_id: 'a1',
                      body:
                          'I\'m struggling with the recursive approach. Can someone explain the base case logic clearly?',
                      card_id: 'p1',
                      comments: '12',
                      has_tag: true,
                      initials: 'JS',
                      likes: '24',
                      tag: 'COMPUTER SCIENCE',
                      timestamp: '2 hours ago',
                      title: 'How to implement binary search in Python?',
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(),
              child: wrapWithModel(
                model: _model.answerSectionModel,
                updateCallback: () => safeSetState(() {}),
                child: AnswerSectionWidget(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import '/components/button/button_widget.dart';
import '/components/event_list_item/event_list_item_widget.dart';
import '/components/study_group_card/study_group_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'student_dashboard_widget.dart' show StudentDashboardWidget;
import 'package:flutter/material.dart';

class StudentDashboardModel extends FlutterFlowModel<StudentDashboardWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Button.
  late ButtonModel buttonModel1;
  // Model for Button.
  late ButtonModel buttonModel2;
  // Model for StudyGroupCard.
  late StudyGroupCardModel studyGroupCardModel1;
  // Model for StudyGroupCard.
  late StudyGroupCardModel studyGroupCardModel2;
  // Model for StudyGroupCard.
  late StudyGroupCardModel studyGroupCardModel3;
  // Model for EventListItem.
  late EventListItemModel eventListItemModel1;
  // Model for EventListItem.
  late EventListItemModel eventListItemModel2;
  // Model for EventListItem.
  late EventListItemModel eventListItemModel3;

  @override
  void initState(BuildContext context) {
    buttonModel1 = createModel(context, () => ButtonModel());
    buttonModel2 = createModel(context, () => ButtonModel());
    studyGroupCardModel1 = createModel(context, () => StudyGroupCardModel());
    studyGroupCardModel2 = createModel(context, () => StudyGroupCardModel());
    studyGroupCardModel3 = createModel(context, () => StudyGroupCardModel());
    eventListItemModel1 = createModel(context, () => EventListItemModel());
    eventListItemModel2 = createModel(context, () => EventListItemModel());
    eventListItemModel3 = createModel(context, () => EventListItemModel());
  }

  @override
  void dispose() {
    buttonModel1.dispose();
    buttonModel2.dispose();
    studyGroupCardModel1.dispose();
    studyGroupCardModel2.dispose();
    studyGroupCardModel3.dispose();
    eventListItemModel1.dispose();
    eventListItemModel2.dispose();
    eventListItemModel3.dispose();
  }
}

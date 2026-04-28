import '/components/event_card/event_card_widget.dart';
import '/components/filter_chip/filter_chip_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'events_workspace_widget.dart' show EventsWorkspaceWidget;
import 'package:flutter/material.dart';

class EventsWorkspaceModel extends FlutterFlowModel<EventsWorkspaceWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for FilterChip.
  late FilterChipModel filterChipModel1;
  // Model for FilterChip.
  late FilterChipModel filterChipModel2;
  // Model for FilterChip.
  late FilterChipModel filterChipModel3;
  // Model for EventCard.
  late EventCardModel eventCardModel1;
  // Model for EventCard.
  late EventCardModel eventCardModel2;
  // Model for EventCard.
  late EventCardModel eventCardModel3;
  // Model for EventCard.
  late EventCardModel eventCardModel4;

  @override
  void initState(BuildContext context) {
    filterChipModel1 = createModel(context, () => FilterChipModel());
    filterChipModel2 = createModel(context, () => FilterChipModel());
    filterChipModel3 = createModel(context, () => FilterChipModel());
    eventCardModel1 = createModel(context, () => EventCardModel());
    eventCardModel2 = createModel(context, () => EventCardModel());
    eventCardModel3 = createModel(context, () => EventCardModel());
    eventCardModel4 = createModel(context, () => EventCardModel());
  }

  @override
  void dispose() {
    filterChipModel1.dispose();
    filterChipModel2.dispose();
    filterChipModel3.dispose();
    eventCardModel1.dispose();
    eventCardModel2.dispose();
    eventCardModel3.dispose();
    eventCardModel4.dispose();
  }
}

import '/components/filter_chip/filter_chip_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
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

  @override
  void initState(BuildContext context) {
    filterChipModel1 = createModel(context, () => FilterChipModel());
    filterChipModel2 = createModel(context, () => FilterChipModel());
    filterChipModel3 = createModel(context, () => FilterChipModel());
  }

  @override
  void dispose() {
    filterChipModel1.dispose();
    filterChipModel2.dispose();
    filterChipModel3.dispose();
  }
}

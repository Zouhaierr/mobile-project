import '/components/bottomnav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'classroomm_widget.dart' show ClassroommWidget;
import 'package:flutter/material.dart';

class ClassroommModel extends FlutterFlowModel<ClassroommWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for bottomnav component.
  late BottomnavModel bottomnavModel;

  @override
  void initState(BuildContext context) {
    bottomnavModel = createModel(context, () => BottomnavModel());
  }

  @override
  void dispose() {
    bottomnavModel.dispose();
  }
}

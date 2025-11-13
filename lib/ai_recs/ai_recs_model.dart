import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'ai_recs_widget.dart' show AiRecsWidget;
import 'package:flutter/material.dart';

class AiRecsModel extends FlutterFlowModel<AiRecsWidget> {
  ///  Local state fields for this page.

  String apiResponse = ' ';

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (aiMessage)] action in Button widget.
  ApiCallResponse? apiResultfuv;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}

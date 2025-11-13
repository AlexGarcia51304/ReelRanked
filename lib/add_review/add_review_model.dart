import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'add_review_widget.dart' show AddReviewWidget;
import 'package:flutter/material.dart';

class AddReviewModel extends FlutterFlowModel<AddReviewWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for mediaTitle widget.
  FocusNode? mediaTitleFocusNode;
  TextEditingController? mediaTitleTextController;
  String? Function(BuildContext, String?)? mediaTitleTextControllerValidator;
  // Stores action output result for [Backend Call - API (SearchMoviesAndShows)] action in Button widget.
  ApiCallResponse? tMDBresults;
  // State field(s) for reviewDetails widget.
  FocusNode? reviewDetailsFocusNode;
  TextEditingController? reviewDetailsTextController;
  String? Function(BuildContext, String?)? reviewDetailsTextControllerValidator;
  // State field(s) for RatingBar widget.
  double? ratingBarValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    mediaTitleFocusNode?.dispose();
    mediaTitleTextController?.dispose();

    reviewDetailsFocusNode?.dispose();
    reviewDetailsTextController?.dispose();
  }
}

import '/flutter_flow/flutter_flow_util.dart';
import 'friend_page_widget.dart' show FriendPageWidget;
import 'package:flutter/material.dart';

class FriendPageModel extends FlutterFlowModel<FriendPageWidget> {
  ///  Local state fields for this page.

  DocumentReference? friendRef;

  bool isFollowing = false;

  DocumentReference? followDocRef;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
  }
}

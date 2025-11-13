import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'friends_search_page_widget.dart' show FriendsSearchPageWidget;
import 'package:flutter/material.dart';

class FriendsSearchPageModel extends FlutterFlowModel<FriendsSearchPageWidget> {
  ///  Local state fields for this page.

  String? searchQuery;

  DocumentReference? selectedUser;

  ///  State fields for stateful widgets in this page.

  // State field(s) for searchFriend widget.
  FocusNode? searchFriendFocusNode;
  TextEditingController? searchFriendTextController;
  String? Function(BuildContext, String?)? searchFriendTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    searchFriendFocusNode?.dispose();
    searchFriendTextController?.dispose();
  }
}

import '/flutter_flow/flutter_flow_util.dart';
import 'faqs_widget.dart' show FaqsWidget;
import 'package:flutter/material.dart';

class FaqsModel extends FlutterFlowModel<FaqsWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}

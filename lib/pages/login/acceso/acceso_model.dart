import '/flutter_flow/flutter_flow_util.dart';
import 'acceso_widget.dart' show AccesoWidget;
import 'package:flutter/material.dart';

class AccesoModel extends FlutterFlowModel<AccesoWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for txtNameCreate widget.
  FocusNode? txtNameCreateFocusNode;
  TextEditingController? txtNameCreateTextController;
  String? Function(BuildContext, String?)? txtNameCreateTextControllerValidator;
  // State field(s) for emailAddress_Create widget.
  FocusNode? emailAddressCreateFocusNode;
  TextEditingController? emailAddressCreateTextController;
  String? Function(BuildContext, String?)?
      emailAddressCreateTextControllerValidator;
  // State field(s) for password_Create widget.
  FocusNode? passwordCreateFocusNode;
  TextEditingController? passwordCreateTextController;
  late bool passwordCreateVisibility;
  String? Function(BuildContext, String?)?
      passwordCreateTextControllerValidator;
  // State field(s) for password_Confir widget.
  FocusNode? passwordConfirFocusNode;
  TextEditingController? passwordConfirTextController;
  late bool passwordConfirVisibility;
  String? Function(BuildContext, String?)?
      passwordConfirTextControllerValidator;
  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;
  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;

  @override
  void initState(BuildContext context) {
    passwordCreateVisibility = false;
    passwordConfirVisibility = false;
    passwordVisibility = false;
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    txtNameCreateFocusNode?.dispose();
    txtNameCreateTextController?.dispose();

    emailAddressCreateFocusNode?.dispose();
    emailAddressCreateTextController?.dispose();

    passwordCreateFocusNode?.dispose();
    passwordCreateTextController?.dispose();

    passwordConfirFocusNode?.dispose();
    passwordConfirTextController?.dispose();

    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();
  }
}

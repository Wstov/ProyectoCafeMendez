import '/flutter_flow/flutter_flow_util.dart';
import 'pago_widget.dart' show PagoWidget;
import 'package:flutter/material.dart';

class PagoModel extends FlutterFlowModel<PagoWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for linea1 widget.
  FocusNode? linea1FocusNode;
  TextEditingController? linea1TextController;
  String? Function(BuildContext, String?)? linea1TextControllerValidator;
  // State field(s) for linea2 widget.
  FocusNode? linea2FocusNode;
  TextEditingController? linea2TextController;
  String? Function(BuildContext, String?)? linea2TextControllerValidator;
  // State field(s) for provincia widget.
  FocusNode? provinciaFocusNode;
  TextEditingController? provinciaTextController;
  String? Function(BuildContext, String?)? provinciaTextControllerValidator;
  // State field(s) for canton widget.
  FocusNode? cantonFocusNode;
  TextEditingController? cantonTextController;
  String? Function(BuildContext, String?)? cantonTextControllerValidator;
  // State field(s) for distrito widget.
  FocusNode? distritoFocusNode;
  TextEditingController? distritoTextController;
  String? Function(BuildContext, String?)? distritoTextControllerValidator;
  // State field(s) for zip widget.
  FocusNode? zipFocusNode;
  TextEditingController? zipTextController;
  String? Function(BuildContext, String?)? zipTextControllerValidator;
  // State field(s) for nombre widget.
  FocusNode? nombreFocusNode;
  TextEditingController? nombreTextController;
  String? Function(BuildContext, String?)? nombreTextControllerValidator;
  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  // State field(s) for telefono widget.
  FocusNode? telefonoFocusNode;
  TextEditingController? telefonoTextController;
  String? Function(BuildContext, String?)? telefonoTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    linea1FocusNode?.dispose();
    linea1TextController?.dispose();

    linea2FocusNode?.dispose();
    linea2TextController?.dispose();

    provinciaFocusNode?.dispose();
    provinciaTextController?.dispose();

    cantonFocusNode?.dispose();
    cantonTextController?.dispose();

    distritoFocusNode?.dispose();
    distritoTextController?.dispose();

    zipFocusNode?.dispose();
    zipTextController?.dispose();

    nombreFocusNode?.dispose();
    nombreTextController?.dispose();

    emailFocusNode?.dispose();
    emailTextController?.dispose();

    telefonoFocusNode?.dispose();
    telefonoTextController?.dispose();
  }
}

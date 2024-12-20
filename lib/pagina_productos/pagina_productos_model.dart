import '/flutter_flow/flutter_flow_util.dart';
import 'pagina_productos_widget.dart' show PaginaProductosWidget;
import 'package:flutter/material.dart';

class PaginaProductosModel extends FlutterFlowModel<PaginaProductosWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for RatingBar widget.
  double? ratingBarValue;
  // State field(s) for txtCantidad widget.
  FocusNode? txtCantidadFocusNode;
  TextEditingController? txtCantidadTextController;
  String? Function(BuildContext, String?)? txtCantidadTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtCantidadFocusNode?.dispose();
    txtCantidadTextController?.dispose();
  }
}

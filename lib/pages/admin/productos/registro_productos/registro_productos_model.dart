import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'registro_productos_widget.dart' show RegistroProductosWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RegistroProductosModel extends FlutterFlowModel<RegistroProductosWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for txtNombreProducto widget.
  FocusNode? txtNombreProductoFocusNode;
  TextEditingController? txtNombreProductoTextController;
  String? Function(BuildContext, String?)?
      txtNombreProductoTextControllerValidator;
  // State field(s) for txtDetalleProducto widget.
  FocusNode? txtDetalleProductoFocusNode;
  TextEditingController? txtDetalleProductoTextController;
  String? Function(BuildContext, String?)?
      txtDetalleProductoTextControllerValidator;
  // State field(s) for txtPresentacion widget.
  FocusNode? txtPresentacionFocusNode;
  TextEditingController? txtPresentacionTextController;
  String? Function(BuildContext, String?)?
      txtPresentacionTextControllerValidator;
  // State field(s) for txtTipoGrano widget.
  FocusNode? txtTipoGranoFocusNode;
  TextEditingController? txtTipoGranoTextController;
  String? Function(BuildContext, String?)? txtTipoGranoTextControllerValidator;
  // State field(s) for txtCantidad widget.
  FocusNode? txtCantidadFocusNode;
  TextEditingController? txtCantidadTextController;
  String? Function(BuildContext, String?)? txtCantidadTextControllerValidator;
  // State field(s) for txtPrecio widget.
  FocusNode? txtPrecioFocusNode;
  TextEditingController? txtPrecioTextController;
  String? Function(BuildContext, String?)? txtPrecioTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtNombreProductoFocusNode?.dispose();
    txtNombreProductoTextController?.dispose();

    txtDetalleProductoFocusNode?.dispose();
    txtDetalleProductoTextController?.dispose();

    txtPresentacionFocusNode?.dispose();
    txtPresentacionTextController?.dispose();

    txtTipoGranoFocusNode?.dispose();
    txtTipoGranoTextController?.dispose();

    txtCantidadFocusNode?.dispose();
    txtCantidadTextController?.dispose();

    txtPrecioFocusNode?.dispose();
    txtPrecioTextController?.dispose();
  }
}

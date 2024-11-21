import '/components/add_to_cart_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'pagina_productos_widget.dart' show PaginaProductosWidget;
import 'package:flutter/material.dart';

class PaginaProductosModel extends FlutterFlowModel<PaginaProductosWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for RatingBar widget.
  double? ratingBarValue;
  // Model for addToCart component.
  late AddToCartModel addToCartModel;

  @override
  void initState(BuildContext context) {
    addToCartModel = createModel(context, () => AddToCartModel());
  }

  @override
  void dispose() {
    addToCartModel.dispose();
  }
}

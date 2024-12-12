import '/components/checkout_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'shopping_cart_widget.dart' show ShoppingCartWidget;
import 'package:flutter/material.dart';

class ShoppingCartModel extends FlutterFlowModel<ShoppingCartWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for checkout component.
  late CheckoutModel checkoutModel;

  @override
  void initState(BuildContext context) {
    checkoutModel = createModel(context, () => CheckoutModel());
  }

  @override
  void dispose() {
    checkoutModel.dispose();
  }
}

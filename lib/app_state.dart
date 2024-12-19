import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _cartProducts = prefs
              .getStringList('ff_cartProducts')
              ?.map((path) => path.ref)
              .toList() ??
          _cartProducts;
    });
    _safeInit(() {
      _cartSummary =
          prefs.getStringList('ff_cartSummary')?.map(double.parse).toList() ??
              _cartSummary;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<DocumentReference> _cartProducts = [];
  List<DocumentReference> get cartProducts => _cartProducts;
  set cartProducts(List<DocumentReference> value) {
    _cartProducts = value;
    prefs.setStringList('ff_cartProducts', value.map((x) => x.path).toList());
  }

  void addToCartProducts(DocumentReference value) {
    cartProducts.add(value);
    prefs.setStringList(
        'ff_cartProducts', _cartProducts.map((x) => x.path).toList());
  }

  void removeFromCartProducts(DocumentReference value) {
    cartProducts.remove(value);
    prefs.setStringList(
        'ff_cartProducts', _cartProducts.map((x) => x.path).toList());
  }

  void removeAtIndexFromCartProducts(int index) {
    cartProducts.removeAt(index);
    prefs.setStringList(
        'ff_cartProducts', _cartProducts.map((x) => x.path).toList());
  }

  void updateCartProductsAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    cartProducts[index] = updateFn(_cartProducts[index]);
    prefs.setStringList(
        'ff_cartProducts', _cartProducts.map((x) => x.path).toList());
  }

  void insertAtIndexInCartProducts(int index, DocumentReference value) {
    cartProducts.insert(index, value);
    prefs.setStringList(
        'ff_cartProducts', _cartProducts.map((x) => x.path).toList());
  }

  List<double> _cartSummary = [];
  List<double> get cartSummary => _cartSummary;
  set cartSummary(List<double> value) {
    _cartSummary = value;
    prefs.setStringList(
        'ff_cartSummary', value.map((x) => x.toString()).toList());
  }

  void addToCartSummary(double value) {
    cartSummary.add(value);
    prefs.setStringList(
        'ff_cartSummary', _cartSummary.map((x) => x.toString()).toList());
  }

  void removeFromCartSummary(double value) {
    cartSummary.remove(value);
    prefs.setStringList(
        'ff_cartSummary', _cartSummary.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromCartSummary(int index) {
    cartSummary.removeAt(index);
    prefs.setStringList(
        'ff_cartSummary', _cartSummary.map((x) => x.toString()).toList());
  }

  void updateCartSummaryAtIndex(
    int index,
    double Function(double) updateFn,
  ) {
    cartSummary[index] = updateFn(_cartSummary[index]);
    prefs.setStringList(
        'ff_cartSummary', _cartSummary.map((x) => x.toString()).toList());
  }

  void insertAtIndexInCartSummary(int index, double value) {
    cartSummary.insert(index, value);
    prefs.setStringList(
        'ff_cartSummary', _cartSummary.map((x) => x.toString()).toList());
  }

  double _totalPrice = 0.0;
  double get totalPrice => _totalPrice;
  set totalPrice(double value) {
    _totalPrice = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

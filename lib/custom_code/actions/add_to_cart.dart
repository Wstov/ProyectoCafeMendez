// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:cloud_firestore/cloud_firestore.dart';

Future<void> addToCart(String userId, String productId, int quantity) async {
  final cartRef = FirebaseFirestore.instance
      .collection('users')
      .doc(userId)
      .collection('cart')
      .doc(productId);

  final cartDoc = await cartRef.get();

  if (cartDoc.exists) {
    // Incrementa la cantidad si el producto ya está en el carrito
    await cartRef.update({
      'quantity': FieldValue.increment(quantity),
    });
  } else {
    // Agrega un nuevo producto al carrito
    await cartRef.set({
      'productId': productId,
      'quantity': quantity,
      'addedAt': FieldValue.serverTimestamp(),
    });
  }
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!

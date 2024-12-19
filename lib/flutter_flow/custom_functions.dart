import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

int? averageRating(List<int>? ratings) {
  if (ratings == null || ratings.isEmpty) {
    return null;
  }
  int sum = 0;
  for (int rating in ratings) {
    sum += rating;
  }
  return (sum / ratings.length).round();
}

double? priceSummary(List<double>? allPrices) {
  if (allPrices == null || allPrices.isEmpty) {
    return null;
  }
  double sum = 0.0;
  for (double price in allPrices) {
    sum += price;
  }
  return sum;
}

double? calculateTotal(List<double> prices) {
  double total = 0.0;

  for (double price in prices) {
    total += price;
  }

  return total;
}

import 'package:flutter/material.dart';

class Product {
  final String name;
  final String description;
  final int price;
  final String label;
  final Color color;
  final ValueNotifier<int> rating;

  Product({
    required this.name,
    required this.description,
    required this.price,
    required this.label,
    required this.color,
    int rating = 0,
  }) : rating = ValueNotifier<int>(rating);
}
import 'package:flutter/material.dart';
import '../models/product.dart';

final List<Product> products = [
  Product(
    name: 'Pixel',
    description: 'Pixel is the most featureful phone ever',
    price: 800,
    label: 'pixel 1',
    color: const Color(0xFF3B63D8),
  ),
  Product(
    name: 'Laptop',
    description: 'Laptop is most productive development tool',
    price: 2000,
    label: 'laptop',
    color: const Color(0xFF3FD63F),
  ),
  Product(
    name: 'Tablet',
    description: 'Tablet is the most useful device ever for meeting',
    price: 1500,
    label: 'tablet',
    color: const Color(0xFFCFC534),
    rating: 3,
  ),
  Product(
    name: 'Pendrive',
    description: 'iPhone is the stylist phone ever',
    price: 100,
    label: 'pen drive',
    color: const Color(0xFFC45C40),
  ),
  Product(
    name: 'Floppy Drive',
    description: 'iPhone is the stylist phone ever',
    price: 20,
    label: 'floppy',
    color: const Color(0xFF40BEAB),
  ),
  Product(
    name: 'iPhone',
    description: 'iPhone is the stylist phone ever',
    price: 1000,
    label: 'iphone',
    color: const Color(0xFF8E44AD),
  ),
];
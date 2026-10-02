import 'package:flutter/material.dart';
import '../models/product.dart';
import '../widgets/rating_box.dart';

class ProductDetailsPage extends StatelessWidget {
  final Product product;

  const ProductDetailsPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(product.name)),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 250,
            color: product.color,
            alignment: Alignment.center,
            child: Text(
              product.label,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 64,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(product.name, style: const TextStyle(fontWeight: FontWeight.bold)),
                  Text(product.description, textAlign: TextAlign.center),
                  Text('Price: ${product.price}'),
                  Align(
                    alignment: Alignment.centerRight,
                    child: RatingBox(rating: product.rating),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
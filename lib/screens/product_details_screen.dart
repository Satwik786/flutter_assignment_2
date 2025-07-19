import 'package:flutter/material.dart';
import '../models/product.dart';

class ProductDetailsScreen extends StatelessWidget {
  final Product product;

  const ProductDetailsScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.name),
        backgroundColor: Colors.teal.shade300,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                product.imageUrl,
                height: 220,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              product.name,
              style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              '₹${product.price.toStringAsFixed(0)}',
              style: const TextStyle(fontSize: 22, color: Colors.teal),
            ),
            const SizedBox(height: 8),
            Text(
              '${product.discount}% OFF',
              style: const TextStyle(color: Colors.red),
            ),
            const SizedBox(height: 8),
            Text('⭐ ${product.rating} • ⏱️ ${product.deliveryTime}'),
            const SizedBox(height: 16),
            const Text(
              'Product Description',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'This is a fresh and organic grocery item sourced from trusted farms. Store in a cool place and consume within 3-4 days of delivery.',
              style: TextStyle(fontSize: 16, height: 1.5),
            ),
          ],
        ),
      ),
    );
  }
}

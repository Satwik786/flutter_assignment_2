import 'package:flutter/material.dart';
import '../data/dummy_data.dart';
import '../widgets/product_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grocery App'),
        backgroundColor: Colors.teal.shade300,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView.builder(
          itemCount: dummyProducts.length,
          itemBuilder: (context, index) {
            return ProductCard(product: dummyProducts[index]);
          },
        ),
      ),
    );
  }
}

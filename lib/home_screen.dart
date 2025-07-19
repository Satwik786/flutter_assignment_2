import 'package:flutter/material.dart';
import 'details_screen.dart';

class HomeScreen extends StatelessWidget {
  final List<Map<String, String>> plants = [
    {'name': 'Tulip', 'price': '₹799', 'image': 'assets/tulip.webp'},
    {'name': 'Jasmine', 'price': '₹599', 'image': 'assets/jasmine.webp'},
    {'name': 'Tulip', 'price': '₹799', 'image': 'assets/tulip.webp'},
    {'name': 'Jasmine', 'price': '₹599', 'image': 'assets/jasmine.webp'},
    {'name': 'Tulip', 'price': '₹799', 'image': 'assets/tulip.webp'},
    {'name': 'Jasmine', 'price': '₹599', 'image': 'assets/jasmine.webp'},
    {'name': 'Tulip', 'price': '₹799', 'image': 'assets/tulip.webp'},
    {'name': 'Jasmine', 'price': '₹599', 'image': 'assets/jasmine.webp'},
    {'name': 'Tulip', 'price': '₹799', 'image': 'assets/tulip.webp'},
    {'name': 'Jasmine', 'price': '₹599', 'image': 'assets/jasmine.webp'},
  ];

  final List<String> categories = ['Popular', 'Outdoor', 'Indoor', 'Top Pick'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        actions: [Icon(Icons.shopping_cart)],
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hello Satwik',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 40,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: categories
                    .map(
                      (cat) => Padding(
                        padding: EdgeInsets.symmetric(horizontal: 4),
                        child: CategoryChip(label: cat),
                      ),
                    )
                    .toList(),
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: plants.length,
                itemBuilder: (context, index) {
                  final plant = plants[index];
                  return PlantCard(plant: plant);
                },
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 100,
              decoration: BoxDecoration(
                color: Colors.orange.shade100,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Text(
                  '🌿 Free Shipping on orders over ₹1000!',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryChip extends StatelessWidget {
  final String label;
  const CategoryChip({required this.label});

  @override
  Widget build(BuildContext context) {
    return Chip(label: Text(label), backgroundColor: Colors.orange.shade50);
  }
}

class PlantCard extends StatelessWidget {
  final Map<String, String> plant;
  const PlantCard({required this.plant});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(vertical: 8),
      leading: Hero(
        tag: plant['name']!,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(
            plant['image']!,
            width: 60,
            height: 60,
            fit: BoxFit.cover,
          ),
        ),
      ),
      title: Text(
        plant['name']!,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(
        plant['price']!,
        style: TextStyle(color: Colors.orange, fontWeight: FontWeight.w600),
      ),
      trailing: Icon(Icons.arrow_forward_ios),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => PlantDetailsScreen(plant: plant)),
        );
      },
    );
  }
}

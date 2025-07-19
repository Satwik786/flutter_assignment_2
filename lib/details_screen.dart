import 'package:flutter/material.dart';

class PlantDetailsScreen extends StatelessWidget {
  final Map<String, String>? plant;

  const PlantDetailsScreen({super.key, this.plant});

  @override
  Widget build(BuildContext context) {
    final name = plant?['name'] ?? 'Plant';
    final price = plant?['price'] ?? '\$0';
    final image = plant?['image'] ?? '';

    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
        actions: [Icon(Icons.favorite_border)],
        backgroundColor: Colors.orange.shade100,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: name,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(image, height: 220, fit: BoxFit.cover),
              ),
            ),
            SizedBox(height: 20),
            Text(
              name,
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              price,
              style: TextStyle(
                fontSize: 22,
                color: Colors.orange,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildStatIcon(Icons.wb_sunny_outlined, 'Light'),
                _buildStatIcon(Icons.opacity, 'Water'),
                _buildStatIcon(Icons.thermostat_outlined, 'Temp'),
              ],
            ),
            SizedBox(height: 24),
            Text(
              '🌿 Description',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'This plant is perfect for indoor decoration and purifying the air. It requires moderate sunlight and water once a week. '
              'Ensure it gets enough natural light and avoid overwatering. It thrives in room temperatures. Read more...',
              style: TextStyle(fontSize: 16, height: 1.5),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatIcon(IconData icon, String label) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: Colors.orange.shade50,
          radius: 28,
          child: Icon(icon, size: 28, color: Colors.orange),
        ),
        SizedBox(height: 6),
        Text(label, style: TextStyle(fontWeight: FontWeight.w500)),
      ],
    );
  }
}

// lib/screens/inventory_screen.dart
import 'package:flutter/material.dart';

class InventoryScreen extends StatefulWidget {
  @override
  _InventoryPageState createState() => _InventoryPageState();
}

class _InventoryPageState extends State<InventoryScreen> {
  List<Map<String, String>> inventory = [
    {"name": "Eggs", "image": "assets/images/eggs.jpeg"},
    {"name": "Milk", "image": "assets/images/milk.jpeg"},
    {"name": "Bananas", "image": "assets/images/bananas.jpeg"},
    {"name": "Cheese", "image": "assets/images/cheese.jpeg"},
    {"name": "Bread", "image": "assets/images/bread.jpeg"},

    {"name": "Chicken", "image": "assets/images/chicken.jpeg"},
    {"name": "Butter", "image": "assets/images/butter.jpeg"},
    {"name": "Rice", "image": "assets/images/rice.jpeg"},
    {"name": "Meat", "image": "assets/images/meat.jpeg"},
    {"name": "Juice", "image": "assets/images/juice.jpeg"},

    {"name": "Chili", "image": "assets/images/chili.jpeg"},
    {"name": "Beer", "image": "assets/images/beer.jpeg"},
    {"name": "Coffee", "image": "assets/images/coffee.jpeg"},
    {"name": "Ham", "image": "assets/images/ham.jpeg"},
    {"name": "Onions", "image": "assets/images/onion.jpeg"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inventory'),
        backgroundColor: Colors.green.shade900,  // Setting the background color
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.amber),  // Custom back arrow color
          onPressed: () => Navigator.of(context).pop(),
        ),
        elevation: 0,  // Optional: Remove shadow if it's causing issues
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, // 3 items per row
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0,
          ),
          itemCount: inventory.length,
          itemBuilder: (context, index) {
            final item = inventory[index];
            return GestureDetector(
              onTap: () {
                // handle item click
              },
              child: Card(
                elevation: 4,
                color: Colors.green.shade200,  // Set the background color to green
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Image.asset(
                        item['image'] ?? '',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        item['name'] ?? '',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

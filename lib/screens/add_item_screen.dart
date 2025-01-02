// lib/screens/add_item_screen.dart
import 'package:flutter/material.dart';

ThemeData appTheme = ThemeData(
  primarySwatch: Colors.green,
  scaffoldBackgroundColor: Color(0xFF002B00), // Dark green background
  textTheme: TextTheme(
    displayLarge: TextStyle(color: Colors.amber, fontSize: 24, fontWeight: FontWeight.bold),
    bodyLarge: TextStyle(color: Colors.white, fontSize: 16),
    labelLarge: TextStyle(color: Colors.green, fontSize: 18, fontWeight: FontWeight.bold),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xFF00A800), // Green button color
        foregroundColor: Colors.white, // Text color
        shadowColor: Colors.green, // Green shadow color
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        side: BorderSide(width: 5)
    ),
  ),
);

class AddItemScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Item'),
        backgroundColor: Colors.green.shade900,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Item name (e.g., "Milk")',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: 'Quantity (e.g., 2 liters)',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: 'Category (e.g., Fruits, Vegetables)',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: 'Expiry Date',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context); // Go back
                  },
                  child: Text('Undo'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Save logic here
                  },
                  child: Text('Save'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

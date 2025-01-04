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
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.amber),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Add Item Title
            Text(
              'Add item',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.amber,
              ),
            ),
            SizedBox(height: 20),

            // Input Fields
            TextField(
              decoration: InputDecoration(
                labelText: 'Item name (e.g., "Milk")',
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(),
              ),
              style: TextStyle(color: Colors.black),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: 'Quantity (e.g., 2 liters)',
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(),
              ),
              style: TextStyle(color: Colors.black),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: 'Category (e.g., Fruits, Vegetables)',
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(),
              ),
              style: TextStyle(color: Colors.black),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: 'Expiry Date',
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(),
              ),
              style: TextStyle(color: Colors.black),
            ),
            SizedBox(height: 20),




            // Cancel and Save Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF1B5A1B),
                    foregroundColor: Colors.amber,
                    side: const BorderSide(width: 5, color: Color(0xFF1A3A16)),
                    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                    textStyle: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  child: Text('Cancel'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Save logic here
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF1B5A1B),
                    foregroundColor: Colors.amber,
                    side: const BorderSide(width: 5, color: Color(0xFF1A3A16)),
                    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                    textStyle: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  child: Text('Save'),
                ),
              ],
            ),
            SizedBox(height: 20),


            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF1B5A1B),
                    foregroundColor: Colors.amber,
                    side: const BorderSide(width: 5, color: Color(0xFF1A3A16)),
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                    textStyle: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  child: Text('Barcode Scanner'),
                ),
              ],
            ),

            SizedBox(height: 20),

            // Frequently Added Items Section
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Frequently added items',
                  style: TextStyle(
                    color: Colors.amber,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10, width: 0,),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.8,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('• Eggs'),
                    Text('• Banana'),
                    Text('• Ground meat (400g)'),
                    Text('• Ham'),
                    Text('• Butter'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


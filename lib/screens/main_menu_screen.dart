// lib/screens/main_menu_screen.dart
import 'package:flutter/material.dart';
import 'package:pantrypal/main.dart';

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

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF002B00), // Match background color
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              backgroundColor: Colors.green,
              child: Text('N', style: TextStyle(color: Colors.white)),
            ),
            Text('PantryPal', style: TextStyle(color: Colors.lightGreen ,fontSize: 20, fontWeight: FontWeight.bold)),
            Icon(Icons.menu, color: Colors.white),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome Niklas!',
              style: Theme.of(context).textTheme.displayLarge,
            ),
            SizedBox(height: 20),

            /*Image.asset(
              'assets/zero_waste.png', // Replace with your image file
              width: 300,
              height: 150,
            ),*/

            SizedBox(height: 20),
            ..._buildButtons(context), // Call function for buttons
          ],
        ),
      ),
    );
  }

  List<Widget> _buildButtons(BuildContext context) {
    final buttonLabels = [
      'Add item',
      'View inventory',
      'Recipe suggestions',
      'Track expiry',
      'Shared inventory'
    ];
    return buttonLabels.map((label) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 5.0),
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.8, // 80% of screen width
          child: ElevatedButton(style:
          ElevatedButton.styleFrom(shadowColor: Colors.green, // Green shadow color
          ),
            onPressed: () {
              Navigator.pushNamed(context, '/add-item');            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(label),
                if (label == 'Track expiry') Icon(Icons.warning_amber, color: Colors.red),
              ],
            ),
          ),
        ),
      );
    }).toList();
  }
}
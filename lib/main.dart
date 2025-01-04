import 'package:flutter/material.dart';
import 'screens/main_menu_screen.dart';
import 'screens/add_item_screen.dart';
import 'screens/inventory_screen.dart';


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


void main() {
  runApp(PantryPal());
}

class PantryPal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PantryPal',
      theme: appTheme,
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/add-item': (context) => AddItemScreen(),
        '/inventory': (context) => InventoryScreen(),
      },
    );
  }
}
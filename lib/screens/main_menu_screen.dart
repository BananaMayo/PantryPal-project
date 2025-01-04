// lib/screens/main_menu_screen.dart
import 'package:flutter/material.dart';
import 'package:pantrypal/main.dart';



class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF002B00),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              backgroundColor: Colors.green,
              child: Text('N', style: TextStyle(color: Colors.white)),
            ),
            Text('PantryPal', style: TextStyle(color: Colors.lightGreen ,fontSize: 25, fontWeight: FontWeight.bold)),
            Icon(Icons.menu, color: Colors.white),
          ],
        ),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          // Top Section
          Padding(
            padding: const EdgeInsets.only(top: 40.0),
            child: Text(
              'Welcome Niklas!',
              style: Theme.of(context).textTheme.displayLarge,
            ),
          ),

          Center(child: Image.asset('assets/images/zero_waste.jpeg', width: 350, height: 200,),),

          // Bottom Section
          Padding(
            padding: const EdgeInsets.only(bottom: 40.0),
            child: Column(
              children: _buildButtons(context), // Call function for buttons
            ),
          ),
        ],
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
          ElevatedButton.styleFrom(
            backgroundColor: Color(0xFF1B5A1B),
            foregroundColor: Colors.amber,
            //shadowColor: Colors.transparent,
            shadowColor: Color(0xFF218521),
            elevation: 3,
            side: const BorderSide(width: 5, color: Color(0xFF1A3A16)),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            padding: EdgeInsets.symmetric(vertical: 15),
          ),
            onPressed: () {
              if (label == 'View inventory') {
                Navigator.pushNamed(context, '/inventory');
              } else if (label == 'Add item') {
                Navigator.pushNamed(context, '/add-item');
              } else {
                //logic for other buttons here
              }
            },
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
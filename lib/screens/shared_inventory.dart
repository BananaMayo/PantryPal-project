import 'package:flutter/material.dart';

class SharedInventoryScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Shared Inventory',
          style: TextStyle(color: Colors.amber),
        ),
        backgroundColor: Colors.green.shade900,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.amber),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                labelText: 'Enter member email',
                labelStyle: TextStyle(color: Color(0xB6252525)),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(style:
              ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF1B5A1B),
                foregroundColor: Colors.amber,
                shadowColor: Color(0xFF218521),
                elevation: 3,
                side: const BorderSide(width: 5, color: Color(0xFF1A3A16)),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
              ),
              onPressed: () {
                String email = emailController.text.trim();
                if (email.isNotEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Invitation sent to $email!')),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Please enter a valid email.')),
                  );
                }
              },
              child: Text('Send Invitation'),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class SharedInventoryPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shared Inventory'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: 'Enter member email',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                String email = emailController.text.trim();
                if (email.isNotEmpty) {
                  // Add backend logic to send an invite here.
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

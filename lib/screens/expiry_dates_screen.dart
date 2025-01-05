import 'package:flutter/material.dart';

class ExpiryDatesScreen extends StatefulWidget {
  @override
  _ExpiryDatesScreenState createState() => _ExpiryDatesScreenState();
}

class _ExpiryDatesScreenState extends State<ExpiryDatesScreen> {
  final List<Map<String, dynamic>> expiryItems = [
    {
      "name": "Ground meat",
      "image": "assets/images/meat.jpeg",
      "expiryDate": "19.12.2024",
      "status": "Today",
      "warning": Colors.red,
    },
    {
      "name": "Milk",
      "image": "assets/images/milk.jpeg",
      "expiryDate": "20.12.2024",
      "status": "Tomorrow",
      "warning": Colors.red,
    },
    {
      "name": "Chicken",
      "image": "assets/images/chicken.jpeg",
      "expiryDate": "23.12.2024",
      "status": "",
      "warning": Colors.orange,
    },
    {
      "name": "Butter",
      "image": "assets/images/butter.jpeg",
      "expiryDate": "07.02.2025",
      "status": "",
      "warning": Colors.green,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade900,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.amber),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'Expiry dates',
          style: TextStyle(color: Colors.amber),
        ),
        actions: [
          TextButton(
            onPressed: () {
            },
            child: Text(
              'Edit',
              style: TextStyle(color: Colors.amber),
            ),
          ),
        ],
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(8.0),
        itemCount: expiryItems.length,
        itemBuilder: (context, index) {
          final item = expiryItems[index];
          return Card(
            elevation: 4,
            margin: EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    item['image'] ?? '',
                    height: 80,
                    width: 80,
                    fit: BoxFit.cover,
                  ),
                ),

                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Expires: ${item['expiryDate']}',
                          style: TextStyle(fontSize: 16),
                        ),
                        if (item['status'].isNotEmpty)
                          Text(
                            '(${item['status']})',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: item['warning'],
                            ),
                          ),
                      ],
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.warning,
                    color: item['warning'],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

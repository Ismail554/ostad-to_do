import 'package:flutter/material.dart';

class FoodListPage extends StatelessWidget {
  final List<String> foods = [
    'Burger 🍔',
    'Pizza 🍕',
    'Biryani 🍛',
    'Pasta 🍝',
    'Ice Cream 🍨',
    'Coffee ☕',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Food Menu 😋'),
        backgroundColor: Colors.orange,
      ),
      body: ListView.builder(
        itemCount: foods.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              child: Text('${index + 1}'),
              backgroundColor: Colors.orangeAccent,
            ),
            title: Text(
              foods[index],
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            subtitle: Text('Delicious and fresh!'),
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('You selected ${foods[index]}')),
              );
            },
          );
        },
      ),
    );
  }
}

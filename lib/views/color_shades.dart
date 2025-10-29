import 'package:flutter/material.dart';

class ColorShadesScreen extends StatefulWidget {
  const ColorShadesScreen({super.key});

  @override
  State<ColorShadesScreen> createState() => _ColorShadesScreenState();
}

class _ColorShadesScreenState extends State<ColorShadesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Color shades"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
            width: 50,
            height: 50,
            color: Colors.blue[100 * ((index % 8) + 1)],
            child: Center(child: Text("Item = $index")),
          );
        },
      ),
    );
  }
}

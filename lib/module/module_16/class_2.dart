import 'package:flutter/material.dart';

class CRUD extends StatefulWidget {
  const CRUD({super.key});

  @override
  State<CRUD> createState() => _CRUDState();
}

class _CRUDState extends State<CRUD> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product CRUD"),
        backgroundColor: Colors.orange,
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: 20,
        itemBuilder: (context, index) {
          return Container(
            child: Column(
              children: [
                SizedBox(
                  child: Image.network(
                    "https://img.freepik.com/free-photo/woman-beach-with-her-baby-enjoying-sunset_52683-144131.jpg?size=626&ext=jpg",
                  ),
                ),
                Text("Visiting Place"),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Price: 500"),
                      // SizedBox(width: 4),
                      Text("Quantity: 50"),
                    ],
                  ),
                ),

                Text("Visiting Place"),
              ],
            ),
          );
        },
      ),
    );
  }
}

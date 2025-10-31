import 'package:flutter/material.dart';
import 'package:to_do/views/color_shades.dart';
import 'package:to_do/views/listview_menu.dart';
import 'package:to_do/views/optional_module.dart';

class BasicWidget extends StatefulWidget {
  const BasicWidget({super.key});

  @override
  State<BasicWidget> createState() => _BasicWidgetState();
}

class _BasicWidgetState extends State<BasicWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Module 11 class 1"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: SafeArea(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ColorShadesScreen()),
                );
              },
              child: Text("Color shades"),
            ),
            SizedBox(height: 2),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ModuleSettingScreen(),
                  ),
                );
              },
              child: Text("Optional Module"),
            ),
            SizedBox(height: 2),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FoodListPage(),
                  ),
                );
              },
              child: Text("ListView Menu card."),
            ),

            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: 30,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      leading: Icon(Icons.phone, color: Colors.black),
                      trailing: Icon(Icons.delete, color: Colors.red),
                      subtitle: Text("Mob: 01619527436"),
                      title: Text(
                        "Md. Ismail Hussain $index",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

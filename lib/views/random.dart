import 'package:flutter/material.dart';

class ListSeparated extends StatefulWidget {
  const ListSeparated({super.key});

  @override
  State<ListSeparated> createState() => _ListSeparatedState();
}

class _ListSeparatedState extends State<ListSeparated> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.separated(
          itemCount: 10,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('Item $index'),
            );
          },
          separatorBuilder: (context, index) {
            return Divider();
          },
        ),
      ),
    );
  }
}
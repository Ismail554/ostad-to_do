import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Class1API extends StatefulWidget {
  const Class1API({super.key});

  @override
  State<Class1API> createState() => _Class1APIState();
}

class _Class1APIState extends State<Class1API> {
  List users = [];
  Future fetchUsers() async {
    final response = await http.get(
      Uri.parse('https://jsonplaceholder.typicode.com/users'),
      headers: {'Accept': 'application/json'},
    );
    print(response.body); // full response ta

    if (response.statusCode == 200) {
      users = jsonDecode(response.body);
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("API Class Ostad"),
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        child: ListView.builder(
          itemBuilder: (context, index) {
            final user = users[index];
            return ListTile(
              leading: CircleAvatar(child: Text('${index + 1} ')),
              title: Text(users[index]['name']),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Username: ${user['username']}"),
                  Text("Email: ${user['email']}"),
                  Text("Address: ${user['address']['city']}"),

                  Text("Phone: ${user['phone']}"),
                  Text("Website: ${user['website']}"),
                ],
              ),
            );
          },
          itemCount: users.length,
        ),
      ),
    );
  }
}

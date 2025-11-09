import 'package:flutter/material.dart';

class ChooseUser extends StatelessWidget {
  const ChooseUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Choose User')),
      body: const Center(child: Text('This is the Choose User screen.')),
    );
  }
}

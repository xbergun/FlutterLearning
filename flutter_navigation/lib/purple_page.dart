import 'package:flutter/material.dart';

class PurplePage extends StatelessWidget {
  const PurplePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Purple page'),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Text(
          'Purple Page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  build(context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red[800],
          leading: Icon(Icons.home, color: Colors.white),
          title: Text(
            'Flutter Widget Sederhana',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'home.dart';

void main() => runApp(HomePage());

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Tic Tac Toe",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
        accentColor: Colors.blue,
      ),

      home: Scaffold(
        appBar: AppBar(
          title: Text("Tic Tac Toe"),
        ),
        body: Home(),
      ),
    );
  }
}
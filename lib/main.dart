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
        primaryColor: Color(0xFF191919),
      ),

      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.menu,
          color: Colors.white,
          ),
          title: Center(
            child: Text("Tic Tac Toe",
            style: TextStyle(
              color: Colors.white,
              fontSize: 30.0,
              fontFamily: 'chalk',
              ),),
            ),
          brightness: Brightness.dark,
        ),
        body: Home(),
      ),
    );
  }
}
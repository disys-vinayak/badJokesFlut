import "package:flutter/material.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
            child: Column(
          children: <Widget>[
            Text("Vinayak's App")
          ], // children
        ) // Column
            ), // Center
      ), // Scaffold
    ); // Material App
  }
}

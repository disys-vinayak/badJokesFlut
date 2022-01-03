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
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("What do you call a pencil with eraser on both ends?"),
            Text("Pointless"),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              FloatingActionButton(onPressed: null, child: Icon(Icons.arrow_left)),
              FloatingActionButton(onPressed: null)
            ])
          ], // children
        ) // Column
            ), // Center
      ), // Scaffold
    ); // Material App
  }
}

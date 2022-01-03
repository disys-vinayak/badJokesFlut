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
            Text(
              "What do you call a pencil with eraser on both ends?",
              style: TextStyle(
                fontSize: 27.5,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              "Pointless",
              style: TextStyle(
                fontSize: 27.5,
              ),
              textAlign: TextAlign.center,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              FloatingActionButton(onPressed: null, child: Icon(Icons.arrow_left)),
              FloatingActionButton(onPressed: null, child: Icon(Icons.arrow_right))
            ])
          ], // children
        ) // Column
            ), // Center
      ), // Scaffold
    ); // Material App
  }
}

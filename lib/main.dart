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
            Container(
                margin: EdgeInsets.all(25),
                child: Text(
                  "What do you call a pencil with eraser on both ends?",
                  style: TextStyle(
                    fontSize: 27.5,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                )),
            Container(
                margin: EdgeInsets.fromLTRB(15, 5, 15, 45),
                child: Text(
                  "Pointless",
                  style: TextStyle(
                    fontSize: 22.5,
                    fontWeight: FontWeight.normal,
                  ),
                  textAlign: TextAlign.center,
                )),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  child: FloatingActionButton(
                    onPressed: null,
                    child: Icon(Icons.arrow_left, size: 50),
                    backgroundColor: Colors.orange,
                  )),
              Container(
                  child: FloatingActionButton(
                onPressed: null,
                child: Icon(Icons.arrow_right, size: 50),
                backgroundColor: Colors.orange,
              ))
            ])
          ], // children
        ) // Column
            ), // Center
      ), // Scaffold
    ); // Material App
  }
}

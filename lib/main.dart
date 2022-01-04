import "package:flutter/material.dart";
import "./question.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  final jokes = [
    {
      "question": "What does a baby computer call its father?",
      "answer": "Data"
    },
    {
      "question": "What's a pencil with two erasers called?",
      "answer": "Pointless"
    },
    {
      "question": "Why is the calendar always scared?",
      "answer": "Because it's days are numbered"
    },
    {
      "question": "What do you call a fish with no eye",
      "answer": "Fsh"
    },
  ];

  var jokeIndex = 0;

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Question(question: jokes[jokeIndex]['question']),
            Container(
                margin: EdgeInsets.fromLTRB(15, 5, 15, 45),
                child: Text(
                  jokes[jokeIndex]["answer"],
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
                    onPressed: () {
                      setState(() {
                        jokeIndex--;
                      });
                    },
                    child: Icon(Icons.arrow_left, size: 50),
                    backgroundColor: Colors.orange,
                  )),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  child: FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        jokeIndex++;
                      });
                    },
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

import "package:flutter/material.dart";
import "./question.dart";
import "./answer.dart";

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

  changeJokeIndex(String direction) {
    if (direction == "next") {
      if (jokeIndex == jokes.length - 1) {
        setState(() {
          jokeIndex = 0;
        });
      } else {
        setState(() {
          jokeIndex++;
        });
      }
    } else if (direction == "prev") {
      if (jokeIndex == 0) {
        setState(() {
          jokeIndex = jokes.length - 1;
        });
      } else {
        setState(() {
          jokeIndex--;
        });
      }
    }
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Question(question: jokes[jokeIndex]['question']),
            Answer(answer: jokes[jokeIndex]['answer']),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  child: FloatingActionButton(
                    onPressed: () {
                      changeJokeIndex("prev");
                    },
                    child: Icon(Icons.arrow_left, size: 50),
                    backgroundColor: Colors.orange,
                  )),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  child: FloatingActionButton(
                    onPressed: () {
                      changeJokeIndex("next");
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

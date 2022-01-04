import "package:flutter/material.dart";

class Buttons extends StatelessWidget {
  final Function(String) changeJokeIndex;

  Buttons({this.changeJokeIndex});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
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
    ]);
  }
}

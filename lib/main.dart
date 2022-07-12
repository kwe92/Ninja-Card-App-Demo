// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import "package:flutter/material.dart";

void main() {
  runApp(
    MaterialApp(
      home: NinjaCard(),
    ),
  );
}

// StatefulWidget
// Allows the widget to change state overtime and can contain dynamic data that can change
// Data that changes overtime will be stored in state object
// state objects contain values such as numbers that can chage overtime

class NinjaCard extends StatefulWidget {
  @override
  State<NinjaCard> createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      if (_counter < 2) {
        _counter++;
      } else {
        _counter *= 2;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text("Ninja ID Card"),
        backgroundColor: Colors.grey[850],
        elevation: 0.0, // drop shadow of the AppBar
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage("/assets/deku.jpeg"),
                radius: 65,
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.grey[200],
            ),
            Text(
              "NAME",
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
              height: 6.0,
            ),
            Text(
              "Midoriya",
              style: TextStyle(
                  color: Colors.amberAccent,
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              "Current Ninja Level",
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
              height: 9.0,
            ),
            Text(
              "$_counter",
              style: TextStyle(
                  color: Colors.amberAccent,
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 25.0,
            ),
            Row(
              children: [
                Icon(
                  Icons.mail,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 5),
                Text(
                  "Midoriya@MHA.plusultra",
                  style: TextStyle(color: Colors.grey[400]),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          return _incrementCounter();
        },
        tooltip: "Imcrease Ninja Level!",
        backgroundColor: Colors.amberAccent,
        child: Icon(
          Icons.add,
          size: 40,
          color: Colors.grey[200],
        ),
      ),
    );
  }
}

// Creating a stateful widget from scratch
// if you are in visual studio code you can use the snipit stful and press tab to create a stateful widget
// you then need to rename your widget

// Creates two classes for us

// First it creates a class that extends/inherits from stateful widget

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  // override the createState function
  // CreateState is instantiating the next class we build our state class object
  // Builds a state object for the stateful widget

  @override
  State<Test> createState() => _TestState();
}
// The state object
// Which is just another class
// Can define data and change the state of the class or state object values over time

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    int counter = 1;
    // Return widget tree
    return Container(
      child: Text('Counter: $counter'),
    );
  }
}

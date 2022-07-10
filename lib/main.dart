// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import "package:flutter/material.dart";

void main() {
  runApp(
    MaterialApp(
      home: NinjaCard(),
    ),
  );
}

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
                backgroundImage: AssetImage(
                    "/Users/kwe/flutter-projects/ninja-id-project-basics/ninjaapp/assets/deku.jpeg"),
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

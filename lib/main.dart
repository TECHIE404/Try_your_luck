import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Lets See your luck"),
          backgroundColor: Colors.red,
        ),
        body: Container(
          child: rollball(),
        ),
      ),
    );
  }
}

class rollball extends StatefulWidget {
  @override
  _rollballState createState() => _rollballState();
}

class _rollballState extends State<rollball> {
  var num = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
            child: FlatButton(
              child: Image(
                width: 500,
                height: 500,
                image: AssetImage('images/G$num.png'),
              ),
              onPressed: () {
                setState(() {
                  print("button is pressed");
                  Random random = new Random();
                  var min = 1, max = 6;
                  num = min + random.nextInt(max - min);
                  print('the next image number is G$num');
                });
              },
            ),
          )
        ],
      ),
    );
  }
}

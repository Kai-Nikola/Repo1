import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        appBar: AppBar(
          title: Center(child: Text('Pick Your Anime Wife')),
          backgroundColor: Colors.black,
        ),
        body: MyClass(),
      ),
    ),
  );
}

class MyClass extends StatefulWidget {
  @override
  _MyClassState createState() => _MyClassState();
}

class _MyClassState extends State<MyClass> {
  void ~() {
    setState(() {
      nextwifu = Random().nextInt(6) + 1;
    });
  }

  int nextwifu = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
            child: FlatButton(
          onPressed: () {
            ChangeWifu();
          },
          child: Image.asset('images/wifu$nextwifu.jpg'),
          ),
        ),
      ],
    );
    // ignore: dead_code
  }
}

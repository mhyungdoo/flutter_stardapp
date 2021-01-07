


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SpeedPage extends StatefulWidget {
  @override
  _SpeedPageState createState() => _SpeedPageState();
}

class _SpeedPageState extends State<SpeedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0.0,
        title: Text(
          'SpeedCode',
          style: TextStyle(
            fontSize: 20,
            letterSpacing: 1.5,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xff1A237E),
                  Color(0xff219077),
                  Color(0xff1A237E),
                ]
            )
        ),
      ),

    );
  }
}

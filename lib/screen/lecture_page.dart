
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LecturePage extends StatefulWidget {
  @override
  _LecturePageState createState() => _LecturePageState();
}

class _LecturePageState extends State<LecturePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0.0,
        title: Text(
          'Lecture',
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

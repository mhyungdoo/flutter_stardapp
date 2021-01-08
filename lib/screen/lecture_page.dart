import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../data.dart';



class LecturePage extends StatefulWidget {
  @override
  _LecturePageState createState() => _LecturePageState();
}

class _LecturePageState extends State<LecturePage> {

  var currentPage = images.length - 1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //   extendBodyBehindAppBar: true,
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
      backgroundColor: Color(0xff219077),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text("왕초보 추천강의",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontFamily: "Calibre-Semibold",
                  letterSpacing: 1.0,
                ),
              ),
            ),
           Row(
             children: [
               Container(),
             ],
           ),

          ],
        ),
      ),
    );
  }
}

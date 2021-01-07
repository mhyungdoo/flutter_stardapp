import 'package:flutter/material.dart';

class BottomPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Container(
        height: 60,
        child: TabBar(
          labelColor: Colors.white,
          unselectedLabelColor: Colors.white60,
          indicatorColor: Colors.transparent,
          tabs: <Widget>[
            Tab(
              icon: Icon(
                Icons.grade,
                size: 25,
              ),
              child: Text(
                'STARD',
                style: TextStyle(fontSize: 12),
              ),
            ),
            Tab(
              icon: Icon(
                Icons.grading,
                size: 25,
              ),
              child: Text(
                'Basic',
                style: TextStyle(fontSize: 12),
              ),
            ),
            Tab(
              icon: Icon(
                Icons.video_library,
                size: 25,
              ),
              child: Text(
                'Lecture',
                style: TextStyle(fontSize: 12),
              ),
            ),
            Tab(
              icon: Icon(
                Icons.fast_forward,
                size: 25,
              ),
              child: Text(
                'SpeedCode',
                style: TextStyle(fontSize: 12),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

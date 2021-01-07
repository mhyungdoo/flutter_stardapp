import 'dart:math';
import 'package:flutter/material.dart';
import 'dart:async';

class BasicPage extends StatefulWidget {
  @override
  _BasicPageState createState() => _BasicPageState();
}

class _BasicPageState extends State<BasicPage> {
  double _width = 50;
  double _height = 50;
  Color _color = Colors.green; // 색상은 Color로 선언.
  List<String> _portfolio = ['펀디1기 이지캘린더 기획', '펀디2기 오프섯다 기획', '펀디3기 아이엠 기획', 'Sipro 기획 & 운영', '아이티스타트업 협동조합 기획'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Basic'),
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: AnimatedContainer(
                width: _width,
                height: _height,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: _color,
                ),
                duration: Duration(milliseconds: 500),
                curve: Curves.fastOutSlowIn,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(_portfolio[0], style: TextStyle(fontSize: 25)),
            SizedBox(
              height: 20,
            ),
            Text(_portfolio[1], style: TextStyle(fontSize: 25)),
            SizedBox(
              height: 20,
            ),
            Text(_portfolio[2], style: TextStyle(fontSize: 25)),
            SizedBox(
              height: 20,
            ),
            Text(_portfolio[3], style: TextStyle(fontSize: 25)),
            SizedBox(
              height: 20,
            ),
            Text(_portfolio[4], style: TextStyle(fontSize: 25)),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          for (int i = 0; i < 100; i++) {
            setState(() {
              // floating button이 눌러질 때마다 새로고침
              final random = Random();
              _width = random.nextInt(300).toDouble();
              _height = random.nextInt(100).toDouble();
              _color = Color.fromRGBO(random.nextInt(256), random.nextInt(256),
                  random.nextInt(256), 1);
            });
            await Future.delayed(Duration(milliseconds: 300));
          }
        },
        child: Icon(Icons.play_arrow),
      ),
    );
  }
}

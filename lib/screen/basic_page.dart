import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stardapp20210105/widget/drawer_widget.dart';

class BasicPage extends StatefulWidget {
  @override
  _BasicPageState createState() => _BasicPageState();
}

class _BasicPageState extends State<BasicPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBodyBehindAppBar: true,
      drawer: DrawerWidget(),
      appBar: AppBar(
        elevation: 0.0,
        title: Text(
          'Basic',
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
            ])),
        child: Padding(
          padding: EdgeInsets.only(top: 20.0),
          child: ListView(
            padding: const EdgeInsets.all(30.0),
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.arrow_downward,
                    size: 30,
                    color: Colors.white,
                  ),
                  Container(
                    height: 50,
                    width: 250,
                    child: const Center(child: Text('천천히 차례대로 읽어보세요')),
                  ),
                  Icon(
                    Icons.arrow_downward,
                    size: 30,
                    color: Colors.white,
                  ),
                ],
              ),
              Container(
                height: 50,
                color: Colors.blue[600],
                child: const Center(child: Text('공부의 목적')),
              ),
              Container(
                height: 50,
                color: Colors.blue[500],
                child: const Center(child: Text('Flutter와 Dart 언어')),
              ),
              Container(
                height: 50,
                color: Colors.blue[400],
                child: const Center(
                    child:
                        Text('Widget', style: TextStyle(color: Colors.black))),
              ),
              Container(
                height: 50,
                color: Colors.blue[300],
                child: const Center(
                    child: Text('Class, Method, Object',
                        style: TextStyle(color: Colors.black))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

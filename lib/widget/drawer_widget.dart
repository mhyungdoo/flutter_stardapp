import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stardapp20210105/screen/lecture_page.dart';
import 'package:stardapp20210105/screen/main_page.dart';
import 'package:stardapp20210105/screen/speed_page.dart';

class DrawerWidget extends StatelessWidget {
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              'StarD',
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
            decoration: BoxDecoration(color: Colors.blue),
          ),
          ListTile(
            title: Text('Lecture'),
            onTap: () {
              // 네이게이터 팝을 통해 드로워를 닫는다.
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LecturePage()),
              );
            },
          ),
          ListTile(
            title: Text('SpeedCode'),
            onTap: () {
              // 네이게이터 팝을 통해 드로워를 닫는다.
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SpeedPage()),
              );
            },
          ),
          ListTile(
            title: Text('본 앱은 플러터 카페 스타디 4기 \n 스터디 결과물입니다.'),

          ),
          ListTile(
            title: Text('Version 1.0'),
            onTap: () {
              // 네이게이터 팝을 통해 드로워를 닫는다.
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MainPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:stardapp20210105/screen/basic_page.dart';
import 'package:stardapp20210105/screen/bottom_bar.dart';
import 'package:stardapp20210105/screen/lecture_page.dart';
import 'package:stardapp20210105/screen/main_page.dart';
import 'package:stardapp20210105/screen/speed_page.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'StarD',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: Colors.black,
          accentColor: Colors.white,
        ),
        home: DefaultTabController(
          length: 4, // 하단 메뉴의 개수
          child: Scaffold(
            body: TabBarView(
              physics: NeverScrollableScrollPhysics(),
              children: <Widget>[
                MainPage(),
                BasicPage(),
                LecturePage(),
                SpeedPage(),
        // 각 페이지 화면으로 연결할 클래스 이름
              ],
            ),
            bottomNavigationBar: BottomPage(),
          ),
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:stardapp20210105/screen/speed_page.dart';
import 'package:stardapp20210105/widget/drawer_widget.dart';
import 'package:url_launcher/url_launcher.dart';
import 'lecture_page.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: ('STARD'),
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.light,
          primaryColor: Colors.white,
          accentColor: Colors.blue,
        ),
        home: Scaffold(
          drawer: DrawerWidget(),
          appBar: AppBar(
            title: Text('STARD : 왕초보 플러터 학습',
                   style: TextStyle(
                     fontSize: 20,
                     fontWeight: FontWeight.bold,
                   ),),
          ),
          body: Container(

            child: Column(
              children: [
                Image.asset('assets/stard_lo.PNG', height: 100,),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.star,
                      size: 30,
                      color: Colors.black,
                    ),
                    Text(
                      '    Flutter를 배우고자 하는 \n 왕초보 학습 교재용 앱입니다.',
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    Icon(
                      Icons.star,
                      size: 30,
                      color: Colors.blue,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  '[하단 메뉴 소개]',
                  style: TextStyle(color: Colors.blue, fontSize: 20),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Basic은 학습 노하우와 팁',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Lecture는 초보들을 위한 \n 좋은 동영상 강의 소개',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'SpeedCode는 프론트엔드 \n 개발자를 위한 UI 따라하기',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                SizedBox(
                  height: 20,
                ),
                RaisedButton(
                  onPressed: _launchURL,
                  child: Text(
                    'STARD Cafe 바로가기',
                    style: TextStyle(color: Colors.blue, fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

_launchURL() async {
  const url = 'https://cafe.naver.com/wanganmo';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

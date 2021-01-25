import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:linkable/linkable.dart';
import 'package:stardapp20210105/widget/drawer_widget.dart';
import 'package:url_launcher/url_launcher.dart';

class BasicPage extends StatefulWidget {
  @override
  _BasicPageState createState() => _BasicPageState();
}

class _BasicPageState extends State<BasicPage> {
  get defaultText => null;

  get linkText => null;

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
           //   Color(0xff1A237E),
            ])),
        child: Padding(
          padding: EdgeInsets.only(top: 20.0),
          child: ListView(
            padding: EdgeInsets.all(30.0),
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
                    child: Center(
                        child: Text(
                            '  천천히 차례대로 읽어보세요. \n 해당 링크는 스타디 카페 글로 연결됩니다. ')),
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
                color: Colors.black,
                child: Center(
                  child: Linkify(
                    onOpen: (link) async {
                      if (await canLaunch(link.url)) {
                        await launch(link.url);
                      } else {
                        throw 'Could not launch $link';
                      }
                    },
                    text: "Flutter 공식 문서 https://flutter-ko.dev/docs",
                    style: TextStyle(color: Colors.white),
                    linkStyle: TextStyle(color: Colors.red),
                  ),
                ),
              ),
              Container(
                height: 50,
                color: Colors.grey[900],
                child: Center(
                  child: InkWell(
                    child: Text('Flutter 입문 소개'),
                    onTap: () => launch('https://cafe.naver.com/wanganmo/182'),
                  ),
                ),
              ),
              Container(
                  height: 50,
                  color: Colors.grey[850],
                  child: Center(
                    child: RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          style: linkText,
                          text: "Dart 문법 기초 총정리",
                          recognizer: TapGestureRecognizer()
                            ..onTap = () async {
                              var url = "https://cafe.naver.com/wanganmo/892";
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            }),
                    ])),
                  )),
              Container(
                height: 50,
                color: Colors.grey[800],
                child: Center(
                  child: InkWell(
                    child: Text('Widget의 구성과 구조'),
                    onTap: () => launch('https://cafe.naver.com/wanganmo/729'),
                  ),
                ),
              ),
              Container(
                height: 150,
                width: 250,
                child: Center(
                  child: Linkable(
                    text:
                        "플러터 왕초보 여러분 스타디 카페로 초대합니다.\ncafe.naver.com/wanganmo \n문의 사항은 \n doosmoon@naver.com\n \n",
                    textColor: Colors.white,
                    linkColor: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

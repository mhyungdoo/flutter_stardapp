import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
              //    Color(0xff1A237E),
            ])),
        child: Padding(
          padding: EdgeInsets.only(top: 80.0),
          child: ListView(
            padding: const EdgeInsets.all(20.0),
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                      onTap: _launchURL1,
                      child: Image.asset(
                        'assets/onlineshop.PNG',
                        height: 100,
                      )),
                  Container(
                    height: 50,
                    width: 230,
                    child: Center(
                      child: InkWell(
                        child: Text('Online Shop App', textScaleFactor: 1.5),
                        onTap: () => launch('https://youtu.be/XBKzpTz65Io'),
                      ),
                    ),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                      onTap: _launchURL2,
                      child: Image.asset(
                        'assets/bookstore.PNG',
                        height: 100,
                      )),
                  Container(
                    height: 50,
                    width: 230,
                    child: Center(
                      child: InkWell(
                        child: Text('Bookstore App', textScaleFactor: 1.5),
                        onTap: () => launch('https://youtu.be/qnsfw8sJBA0'),
                      ),
                    ),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                      onTap: _launchURL3,
                      child: Image.asset(
                        'assets/financial.PNG',
                        height: 100,
                      )),
                  Container(
                    height: 50,
                    width: 230,
                    child: Center(
                      child: InkWell(
                        child: Text('financial App', textScaleFactor: 1.5),
                        onTap: () => launch('https://youtu.be/CSQxW12Nbzo'),
                      ),
                    ),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                      onTap: _launchURL4,
                      child: Image.asset(
                        'assets/furniture.PNG',
                        height: 100,
                      )),
                  Container(
                    height: 50,
                    width: 230,
                    child: Center(
                      child: InkWell(
                        child: Text('Furniture Store App', textScaleFactor: 1.5),
                        onTap: () => launch('https://youtu.be/8uLI8ade1aA'),
                      ),
                    ),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                      onTap: _launchURL5,
                      child: Image.asset(
                        'assets/recipe.PNG',
                        height: 100,
                      )),
                  Container(
                    height: 50,
                    width: 230,
                    child: Center(
                      child: InkWell(
                        child: Text('Recipe App', textScaleFactor: 1.5),
                        onTap: () => launch('https://youtu.be/3g5fi65U7ag'),
                      ),
                    ),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                      onTap: _launchURL6,
                      child: Image.asset(
                        'assets/clock.PNG',
                        height: 100,
                      )),
                  Container(
                    height: 50,
                    width: 230,
                    child: Center(
                      child: InkWell(
                        child: Text('Analog Clock App', textScaleFactor: 1.5),
                        onTap: () => launch('https://youtu.be/u6Cfzng3Gek'),
                      ),
                    ),
                  ),
                ],
              ),


            ],
          ),
        ),
      ),
    );
  }
}

_launchURL1() async {
  const url = 'https://youtu.be/XBKzpTz65Io';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURL2() async {
  const url = 'https://youtu.be/qnsfw8sJBA0';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}


_launchURL3() async {
  const url = 'https://youtu.be/CSQxW12Nbzo';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURL4() async {
  const url = 'https://youtu.be/8uLI8ade1aA';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}


_launchURL5() async {
  const url = 'https://youtu.be/3g5fi65U7ag';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURL6() async {
  const url = 'https://youtu.be/u6Cfzng3Gek';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}


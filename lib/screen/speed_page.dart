


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
          padding: EdgeInsets.only(top: 50.0),
          child: ListView(
            padding: const EdgeInsets.all(20.0),
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/onlineshop.PNG', height: 100,),
                  Container(
                    height: 50,
                    width: 230,
                    child: const Center(child: Text('Online Shop App', textScaleFactor: 1.5,)),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/bookstore.PNG', height: 100,),
                  Container(
                    height: 50,
                    width: 230,
                    child: const Center(child: Text('Bookstore App', textScaleFactor: 1.5,)),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/financial.PNG', height: 100,),
                  Container(
                    height: 50,
                    width: 230,
                    child: const Center(child: Text('Financial App', textScaleFactor: 1.5,)),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/furniture.PNG', height: 100,),
                  Container(
                    height: 50,
                    width: 230,
                    child: const Center(child: Text('Furniture Store App', textScaleFactor: 1.5,)),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/recipe.PNG', height: 100,),
                  Container(
                    height: 50,
                    width: 230,
                    child: const Center(child: Text('Recipe App', textScaleFactor: 1.5,)),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/clock.PNG', height: 100,),
                  Container(
                    height: 50,
                    width: 230,
                    child: const Center(child: Text('Analog Clock App', textScaleFactor: 1.5,)),
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

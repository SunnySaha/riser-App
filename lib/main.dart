import 'dart:async';

import 'package:flutter/material.dart';

import 'Screens/IntroPage/introPage.dart';

void main() => runApp(MyApp());
Color appColor = Color(0XFF00B8F0);// 00A9F4

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RISEr',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      routes: <String, WidgetBuilder>{
      '/HomeScreen': (BuildContext context) => new IntroPage()
    },
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => new _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTime() async {
    var _duration = new Duration(seconds: 3);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).pushReplacementNamed('/HomeScreen');
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: appColor.withOpacity(0.7),
          child: Container(
           //color: Colors.yellow,
            // padding: EdgeInsets.only(top: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                    child: Container(
                    //height: 200,
                   // margin: EdgeInsets.only(top: 40),
                    padding: EdgeInsets.fromLTRB(70, 50, 70, 50),
                    child: Image.asset('assets/img/atRISErLogbook.png'),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          color: appColor.withOpacity(0.7),
          elevation: 0.0,
          child: Container(
            padding: EdgeInsets.only(bottom: 10),
            child: Wrap(
              alignment: WrapAlignment.center,
              children: <Widget>[
                Text(
                  'The Digital Logbook Revolution.', //The Digital Logbook Revolution. Skydiving | Tunnel | B.A.S.E.
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.normal),
                ),
                Text(
                  ' Skydiving | Tunnel | B.A.S.E.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      height: 1.5,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      
    );
  }
}


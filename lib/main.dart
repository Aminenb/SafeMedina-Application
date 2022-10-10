import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:safemedinaapp/login.dart';
import 'package:safemedinaapp/signup.dart';
import 'signup.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _pageState = 0;

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/background1.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 3.2, sigmaY: 3.2),
                child: Container(
                  color: Colors.black.withOpacity(0.37),
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.24,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(37, 37, 37, 1),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(42),
                    bottomRight: Radius.circular(42),
                  )),
            ),
            Center(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 60,
                  ),
                  Image.asset(
                    'images/C.png',
                    width: 250,
                    height: 133,
                  ),
                  SizedBox(
                    height: 67,
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 320,
                    child: Text(
                      'TO MAKE THE SOCIAL ENVIRONMENT MORE \nSECURE,\n PARTICIPATORY AND ACTIVE.',
                      style: TextStyle(
                        fontFamily: 'fonthomepage',
                        fontSize: 30,
                        color: Colors.white.withOpacity(0.7),
                        height: 1.9,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  Container(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          new MaterialPageRoute(builder: (context) => Login()),
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.only(right: 32, left: 32),
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(52, 191, 163, 1),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Center(
                          child: Text(
                            'LOGIN',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        new MaterialPageRoute(builder: (context) => signup()),
                      );
                    },
                    child: Container(
                      child: Container(
                        margin: EdgeInsets.only(right: 32, left: 32, top: 10),
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(171, 254, 241, 0.17),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Center(
                          child: Text(
                            'SIGN UP ',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

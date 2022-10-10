import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:safemedinaapp/annonce.dart';
import 'package:safemedinaapp/signup.dart';
import 'signup.dart';
class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final emailcontroller = TextEditingController();
  String password = '';
  bool isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/background2.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 3.2, sigmaY: 3.2),
                child: Container(
                  color: Colors.black.withOpacity(0.38),
                ),
              ),
            ),
            Container(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 100,
                  ),
                  Center(
                    child: Container(
                      width: 180,
                      height: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(33),
                          image: DecorationImage(
                            image: AssetImage('images/D.png'),
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 80,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Email',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4),
                    child: TextField(
                    controller: emailcontroller,
                      keyboardType: TextInputType.emailAddress,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(width: 1.6, color: Colors.black)),
                          focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2),
                          ),
                          contentPadding: EdgeInsets.all(15),
                          prefixIcon: Icon(
                            Icons.email,
                            color: Color.fromRGBO(52, 191, 163, 1),
                          ),
                          hintText: 'Email@gmail.com',
                          hintStyle: TextStyle(
                            color: Colors.white,
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(Icons.close),
                              onPressed: () {
                              setState(() {
                                emailcontroller.clear();
                              });
                            },
                              hoverColor: Color.fromRGBO(39,200,175,1),
                              color: Colors.white,
                            
                          ),
                          ),
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Password',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4),
                    child: TextField(
                      obscureText: isPasswordVisible,
                      keyboardType: TextInputType.emailAddress,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      decoration: InputDecoration(
                      suffixIcon: IconButton(
                        color: Colors.white,
                        icon: isPasswordVisible
                          ? Icon(Icons.visibility_off)
                          : Icon(Icons.visibility),
                        onPressed: () {
                            setState(() {
                          isPasswordVisible = !isPasswordVisible;
                        });
                      },
                    ),
                          enabledBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(width: 1.6, color: Colors.black)),
                          focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2),
                          ),
                          contentPadding: EdgeInsets.all(15),
                          prefixIcon: Icon(
                            Icons.lock_open,
                            color: Color.fromRGBO(39,200,175,1), 
                          ),
                          hintText: 'Password',
                          hintStyle: TextStyle(
                            color: Colors.white,
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  FlatButton(
                    onPressed: () {},
                    child: Container(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'Forget Password ?',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 28,
                  ),
                  Container(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          new MaterialPageRoute(builder: (context) => Login()),
                        );
                      },
                      child: GestureDetector(
                        onTap: () {
                        Navigator.push(
                        context,
                        new MaterialPageRoute(builder: (context) => annonce()),
                      );
                    },
                        child: Container(
                          margin: EdgeInsets.only(right: 32, left: 32),
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(52, 191, 163, 0.55),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Center(
                            child: Text(
                              'LOGIN',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Don't have an Account ? ",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                builder: (context) => signup(),
                              ));
                        },
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15.8,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 4),
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                            child: Divider(
                          thickness: 2,
                          color: Colors.black,
                        )),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            'Or',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Expanded(
                            child: Divider(
                          thickness: 2,
                          color: Colors.black,
                        )),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 3,
                              color: Colors.black12,
                            ),
                            shape: BoxShape.circle,
                            color: Color.fromRGBO(29, 240, 198, 0.88),
                          ),
                          child: Image(
                            image: AssetImage(
                              'images/phone.png',
                            ),
                            height: 22,
                            width: 22,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 3,
                              color: Colors.black12,
                            ),
                            shape: BoxShape.circle,
                            color: Color.fromRGBO(29, 240, 198, 0.88),
                          ),
                          child: Image(
                            image: AssetImage(
                              'images/facebook.png',
                            ),
                            height: 22,
                            width: 22,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 3,
                              color: Colors.black12,
                            ),
                            shape: BoxShape.circle,
                            color: Color.fromRGBO(29, 240, 198, 0.88),
                          ),
                          child: Image(
                            image: AssetImage(
                              'images/google.png',
                            ),
                            height: 22,
                            width: 22,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      
    );
  }
}

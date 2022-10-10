import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:safemedinaapp/annonce.dart';

class signup extends StatefulWidget {
  @override
  _signupState createState() => _signupState();
}

class _signupState extends State<signup> {
  bool checkboxvalue = false;
  bool value = false;
  bool isPasswordVisible = false;
  @override
  Widget build(BuildContext context) {
   

    return Scaffold(
      backgroundColor: Colors.grey,
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/background3.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 3.2, sigmaY: 3.2),
              child: Container(
                color: Colors.black.withOpacity(0.35),
              ),
            ),
          ),
          Container(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 76,
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
                  height: 60,
                ),
                Container(
                  margin: EdgeInsets.only(left: 33),
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      Text(
                        'Name ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        ' *',
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  child: TextField(
                    keyboardType: TextInputType.text,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(width: 1.6, color: Colors.black)),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 2),
                      ),
                      contentPadding: EdgeInsets.all(15),
                      prefixIcon: Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 14,
                ),
                Container(
                  margin: EdgeInsets.only(left: 33),
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      Text(
                        'Email ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        ' *',
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(width: 1.6, color: Colors.black)),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 2),
                      ),
                      contentPadding: EdgeInsets.all(15),
                      prefixIcon: Icon(
                        Icons.email_sharp,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 14,
                ),
                Container(
                  margin: EdgeInsets.only(left: 33),
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      Text(
                        'Password ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        ' *',
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  child: TextField(
                    obscureText: isPasswordVisible,
                    keyboardType: TextInputType.text,
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
                        borderSide: BorderSide(color: Colors.black, width: 2),
                      ),
                      contentPadding: EdgeInsets.all(15),
                      prefixIcon: Icon(
                        Icons.password_sharp,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 14,
                ),
                Container(
                  margin: EdgeInsets.only(left: 33),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'City',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  child: TextField(
                    keyboardType: TextInputType.text,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(width: 1.6, color: Colors.black)),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 2),
                      ),
                      contentPadding: EdgeInsets.all(15),
                      prefixIcon: Icon(
                        Icons.location_city_sharp,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 14,
                ),
                Container(
                  margin: EdgeInsets.only(left: 33),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Phone',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(width: 1.6, color: Colors.black)),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 2),
                      ),
                      contentPadding: EdgeInsets.all(15),
                      prefixIcon: Icon(
                        Icons.phone,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 27,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width:  15,
                      height: 15,
                      color: Colors.white54,
                      child: Checkbox(
                        checkColor: Colors.black,
                        focusColor: Colors.grey,
                        value: checkboxvalue,
                        onChanged: (value) {
                          setState(() {
                            if (checkboxvalue == true) {
                              checkboxvalue = false;
                            } else {
                              checkboxvalue = true;
                            }
                          });
                        },
                        activeColor: Color.fromRGBO(29, 240, 198, 1),

                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.6,
                      child: Text(
                        '   I agree to the terms and conditions',
                        overflow: TextOverflow.fade,
                        softWrap: true,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(29, 240, 198, 1),
                        ),
                      ),
                    ),
                    
                  ],
                ),
                SizedBox(
                    height: 32,
                  ),
                  Container(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          new MaterialPageRoute(builder: (context) => signup()),
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
                              'SIGN UP',
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
              ],
              
            ),
          ),
        ],
      ),
    );
  }
}

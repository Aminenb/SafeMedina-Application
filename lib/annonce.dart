
import 'package:flutter/material.dart';

class annonce extends StatefulWidget {
  @override
  _annonceState createState() => _annonceState();
}

class _annonceState extends State<annonce> {
  
  bool checkboxvalue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(40,40, 40, 1),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: <Widget>[
          TextFormField(
            style: TextStyle(color : Colors.white),
            keyboardType: TextInputType.text,
            decoration: InputDecoration(

              border: OutlineInputBorder(
                  borderSide: BorderSide(
                color: Color.fromRGBO(29, 240, 198, 1),
              )),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color.fromRGBO(29, 240, 198, 1),
                  width: 3.5,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color.fromRGBO(29, 240, 198, 1),
                  width: 1.8,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              labelText: 'Subject',
              labelStyle: TextStyle(
                color: Colors.white ,
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          TextFormField(
            style: TextStyle(color : Colors.white),           
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color.fromRGBO(29, 240, 198, 1),
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color.fromRGBO(29, 240, 198, 1),
                  width: 3.5,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color.fromRGBO(29, 240, 198, 1),
                  width: 1.8,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              labelText: 'City-Neighborhood-Place',
              labelStyle: TextStyle(
                color: Colors.white ,
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          TextFormField(
            style: TextStyle(color : Colors.white),
            keyboardType: TextInputType.datetime,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color.fromRGBO(29, 240, 198, 1),
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color.fromRGBO(29, 240, 198, 1),
                  width: 3.5,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color.fromRGBO(29, 240, 198, 1),
                  width: 1.8,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              labelText: 'Date',
              labelStyle: TextStyle(
                color: Colors.white ,
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          TextFormField(
            style: TextStyle(color : Colors.white),
            maxLines: 7,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color.fromRGBO(29, 240, 198, 1),
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color.fromRGBO(29, 240, 198, 1),
                  width: 3.5,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color.fromRGBO(29, 240, 198, 1),
                  width: 1.8,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              labelText: 'Describe the situation',
              labelStyle: TextStyle(
                color: Colors.white ,
              ),
            ),
          ),
          SizedBox(
            height: 22,
          ),
          Container(
            margin: EdgeInsets.only(left : 45),
            child: Stack(
              children: <Widget>[
                Container(
                  
                  height: 140,
                  width: 260,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/E.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 29,
                  right: 41,
                  child: InkWell(
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        builder: ((builder) => bottomsheet()),
                      );
                    },
                    child: Icon(
                      Icons.camera_alt,
                      color: Color.fromRGBO(29, 240, 198, 1),
                      size: 46,
                    ),
                  ),
                ),
                SizedBox(
                  height: 88,
                ),
                Container(
                  margin: EdgeInsets.only(top: 160,right: 24),
                  child:Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                  width: 15,
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
                  child : Row(
                    children : <Widget>[
                    Text(
                    '    Share on ',
                    overflow: TextOverflow.fade,
                    softWrap: true,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                      color: Color.fromRGBO(29, 248, 198, 1),
                    ),
                  ),
                  Text(
                    'www.SafeMedina.com' ,
                    overflow: TextOverflow.fade,
                    softWrap: true,
                    style: TextStyle(
                      
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                    ],
                ),
                ),
                SizedBox(
                  height: 10,
                ),
                
                

                  ],
                ), 
                ),
                
                
                
                
              ],
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Center(
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
                              'POST',
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
          Container(
            margin: EdgeInsets.only(top: 7, left: 10),

                    child: Container(
                      width: 197,
                      height: 68,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(33),
                          image: DecorationImage(
                            image: AssetImage('images/D.png'),
                          )),
                    ),
                  ),
        ],
      ),
    );
  }

  Widget bottomsheet() {
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      child: Column(
        children: <Widget>[
          Text(
            'Choose a photo',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton.icon(
                icon: Icon(Icons.camera),
                onPressed: () {
                },
                label: Text('Camera'),
              ),
              FlatButton.icon(
                icon: Icon(Icons.image),
                onPressed: () {
                },
                label: Text('Gallery'),
              ),
            ],
          )
        ],
      ),
    );
  }
}

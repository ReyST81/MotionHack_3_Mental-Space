import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mental_space/HomeScreen.dart';
import 'package:mental_space/Page/ArsipJurnal.dart';

class Dailyjournal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fitWidth,
                image: AssetImage("assets/image/Bubbles.png"),
                alignment: Alignment.topCenter,
              ),
              gradient: LinearGradient(
                begin: const FractionalOffset(0.5, 0.3),
                end: const FractionalOffset(0.0, 1.0),
                colors: [Color(0xff8B9CFF), Colors.white],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20, left: 20),
            child: Column(
              children: [
                IconButton(
                  onPressed: () {
                    Route route =
                        MaterialPageRoute(builder: (context) => Homescreen());
                    Navigator.push(context, route);
                  },
                  icon: Icon(Icons.arrow_back),
                )
              ],
            ),
          ),
          Container(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      margin: EdgeInsets.only(top: 100),
                      width: 500,
                      child: Text("Daily Journal",
                          style: GoogleFonts.rhodiumLibre(fontSize: 40),
                          textAlign: TextAlign.center),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 80,
                          width: 200,
                          margin: EdgeInsets.only(left: 60, right: 60),
                          child: RaisedButton(
                            textColor: Colors.black,
                            color: Color(0xffcad2fe),
                            child: Text(
                              "journal",
                              style: GoogleFonts.rhodiumLibre(
                                  fontSize: 24, color: Color(0xff626889)),
                            ),
                            onPressed: () {},
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(20.0),
                            ),
                          ),
                        ),
                        Container(
                          height: 80,
                          width: 200,
                          margin: EdgeInsets.only(left: 60, right: 60),
                          child: RaisedButton(
                            textColor: Colors.black,
                            color: Color(0xffcad2fe),
                            child: Text(
                              "archives",
                              style: GoogleFonts.rhodiumLibre(
                                  fontSize: 24, color: Color(0xff626889)),
                            ),
                            onPressed: () {
                              Route route = MaterialPageRoute(builder: (context) => archives());
                              Navigator.push(context, route);
                            },
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(20.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 370),
                    child: Text(
                      "What i feel about today?",
                      style: GoogleFonts.notoSans(fontSize: 20),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 600,
                    height: 200,
                    margin: EdgeInsets.only(left: 40, right: 40),
                    padding: EdgeInsets.all(7),
                    decoration: BoxDecoration(
                      color: Color(0xffCAD2FE),
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "I really happy to",
                          border: InputBorder.none),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 120),
                    child: Text(
                      "What are good things that makes me happy today?",
                      style: GoogleFonts.notoSans(fontSize: 20),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 600,
                    height: 200,
                    margin: EdgeInsets.only(left: 40, right: 40),
                    padding: EdgeInsets.all(7),
                    decoration: BoxDecoration(
                      color: Color(0xffCAD2FE),
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "i found my jurnal book!",
                          border: InputBorder.none),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 340),
                    child: Text(
                      "What I hope for tomorrow?",
                      style: GoogleFonts.notoSans(fontSize: 20),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 600,
                    height: 200,
                    margin: EdgeInsets.only(left: 40, right: 40),
                    padding: EdgeInsets.all(7),
                    decoration: BoxDecoration(
                      color: Color(0xffCAD2FE),
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "i hope tomorrow will be better",
                          border: InputBorder.none),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 150),
                    child: Text(
                      "What are bad things that makes me sad today?",
                      style: GoogleFonts.notoSans(fontSize: 20),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 600,
                    height: 200,
                    margin: EdgeInsets.only(left: 40, right: 40),
                    padding: EdgeInsets.all(7),
                    decoration: BoxDecoration(
                      color: Color(0xffCAD2FE),
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "i missed my favorite show on TV :”",
                          border: InputBorder.none),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 80,
                    width: 200,
                    margin: EdgeInsets.only(left: 60, right: 60),
                    child: RaisedButton(
                      textColor: Colors.black,
                      color: Color(0xffcad2fe),
                      child: Text(
                        "Save",
                        style: GoogleFonts.rhodiumLibre(
                            fontSize: 24, color: Color(0xff626889)),
                      ),
                      onPressed: () {
                        Route route = MaterialPageRoute(builder: (context) => archives());
                        Navigator.push(context, route);
                      },
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(20.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}

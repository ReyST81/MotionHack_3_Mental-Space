import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mental_space/Screens/HomeScreen.dart';

class archives extends StatelessWidget {
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
                    alignment: Alignment.topCenter),
                gradient: LinearGradient(
                  begin: const FractionalOffset(0.5, 0.3),
                  end: const FractionalOffset(0.0, 1.0),
                  colors: [Color(0xff8B9CFF), Colors.white],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fitWidth,
                  image: AssetImage("assets/image/coba.png"),
                  alignment: Alignment.bottomCenter,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20, left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () {
                      Route route = MaterialPageRoute(builder: (context) => Homescreen());
                        Navigator.push(context, route);
                    },
                    icon: Icon(Icons.arrow_back),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 120),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    child: Text("History",
                        style: GoogleFonts.rhodiumLibre(fontSize: 60)),
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
                            onPressed: () {
                              Navigator.pop(context);
                            },
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
                            onPressed: () {},
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(20.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 80, right: 80 ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "All Activity",
                          style: GoogleFonts.rhodiumLibre(fontSize: 20),
                          ),
                        Image(
                          image: AssetImage("assets/image/calender.png"),
                          width: 100,
                          fit: BoxFit.contain,
                          )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: Container(
                      margin: EdgeInsets.only(left: 40, right: 40),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image(
                                image: AssetImage("assets/image/Book2.png"),
                                width: 100,
                                fit: BoxFit.contain,
                                ),
                              Container(
                                margin: EdgeInsets.only(left: 100),
                                child: Text(
                                  "Sunday 6 March 2022",
                                  style: GoogleFonts.notoSans(
                                      fontSize: 20),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    width: 600,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Color(0xffCAD2FE),
                      borderRadius: BorderRadius.circular(6),
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

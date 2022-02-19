import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mental_space/Page/LoginPage.dart';
import 'package:mental_space/Riwayat/RiwayatnNotifPage.dart';

class Setting extends StatelessWidget {
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
                    onPressed: () {},
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
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 60),
                    child: Container(
                      margin: EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "payment method",
                            style: GoogleFonts.rhodiumLibre(
                                color: Color(0xff000000), fontSize: 20),
                          ),
                          Icon(Icons.arrow_right),
                        ],
                      ),
                    ),
                    width: 600,
                    height: 70,
                    decoration: BoxDecoration(
                      color: Color(0xffCAD2FE),
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 60),
                    child: Container(
                      margin: EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "help service",
                            style: GoogleFonts.rhodiumLibre(
                                color: Color(0xff000000), fontSize: 20),
                          ),
                          Icon(Icons.arrow_right),
                        ],
                      ),
                    ),
                    width: 600,
                    height: 70,
                    decoration: BoxDecoration(
                      color: Color(0xffCAD2FE),
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 60),
                    child: Container(
                      margin: EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "add your insurance",
                            style: GoogleFonts.rhodiumLibre(
                                color: Color(0xff000000), fontSize: 20),
                          ),
                          Icon(Icons.arrow_right),
                        ],
                      ),
                    ),
                    width: 600,
                    height: 70,
                    decoration: BoxDecoration(
                      color: Color(0xffCAD2FE),
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: Container(
                height: 80,
                width: 200,
                margin: EdgeInsets.only(left: 60, right: 60),
                child: RaisedButton(
                  color: Color(0xffcad2fe),
                  child: Text(
                    "Log out",
                    style: GoogleFonts.rhodiumLibre(
                        fontSize: 24, color: Colors.red),
                  ),
                  onPressed: () {
                    Route route = MaterialPageRoute(builder: (context) => Loginpage());
                    Navigator.push(context, route);
                  },
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(20.0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

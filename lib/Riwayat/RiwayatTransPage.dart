import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mental_space/Home/HomePage.dart';
import 'package:mental_space/Riwayat/RiwayatnNotifPage.dart';


class RiwayatTrans extends StatelessWidget {
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
                      Route route = MaterialPageRoute(builder: (context) => HomePage());
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
                          height: 100,
                          width: 200,
                          margin: EdgeInsets.only(left: 60, right: 60),
                          child: RaisedButton(
                            textColor: Colors.black,
                            color: Color(0xff8B9CFF),
                            child: Text(
                              "Notification",
                              style: TextStyle(fontSize: 24),
                            ),
                            onPressed: () {
                              Route route = MaterialPageRoute(
                                  builder: (context) => Riwayat());
                              Navigator.push(context, route);
                            },
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30.0),
                            ),
                          ),
                        ),
                        Container(
                          height: 100,
                          width: 200,
                          margin: EdgeInsets.only(left: 60, right: 60),
                          child: RaisedButton(
                            textColor: Colors.black,
                            color: Color(0xff8B9CFF),
                            child: Text(
                              "Transaction",
                              style: TextStyle(fontSize: 24),
                            ),
                            onPressed: () {},
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  Container(
                          child: Container(
                            margin:
                                EdgeInsets.only(top: 10, left: 10, right: 10),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Sunday,6 March 2022",
                                      style: GoogleFonts.rhodiumLibre(
                                          color: Color(0xff000000),
                                          fontSize: 20),
                                    ),
                                    Image.asset("assets/image/Gopay.png")
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("time : 8.00 am",
                                        style: GoogleFonts.rhodiumLibre(
                                            color: Color(0xff000000),
                                            fontSize: 20)),
                                    Text(
                                      "Rp. 301,000,00",
                                      style: GoogleFonts.notoSans(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          width: 600,
                          height: 80,
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

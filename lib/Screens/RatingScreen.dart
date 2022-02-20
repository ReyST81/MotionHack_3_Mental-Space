import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mental_space/Page/ChatPage.dart';

import '../Home/HomePage.dart';

class Ratingscreen extends StatelessWidget {
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
              margin: EdgeInsets.only(top: 50),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    child: Text("Consultation",
                        style: GoogleFonts.rhodiumLibre(fontSize: 60)),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    child: GestureDetector(
                        onTap: () {
                          Route route = MaterialPageRoute(builder: (context) => Chatpage());
                          Navigator.push(context, route); 
                        },
                      child: Image.asset(
                        "assets/image/ProfilPsikolog.png",
                          width: 275,
                          fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          child: Center(
                            child: Text(
                              "Robbert Aman, Psikolog",
                              style: GoogleFonts.notoSans(
                                  fontSize: 20, fontWeight: FontWeight.normal),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 300,
                          child: Center(
                            child: Column(
                              children: <Widget>[
                                Text(
                                  "Psikolog klinis",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.notoSans(
                                      fontSize: 20,
                                      fontWeight: FontWeight.normal,
                                      color: Color(0xff2d3047)),
                                ),
                                Text(
                                  "Cicendo, Kota Bandung",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.notoSans(
                                      fontSize: 20,
                                      fontWeight: FontWeight.normal,
                                      color: Color(0xff2d3047)),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "how was the consultation?",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.notoSans(
                                      fontSize: 20,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 245),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    size: 45,
                                    color: Colors.yellow,
                                    ),
                                    Icon(
                                    Icons.star,
                                    size: 45,
                                    color: Colors.yellow,
                                    ),
                                    Icon(
                                    Icons.star,
                                    size: 45,
                                    color: Colors.yellow,
                                    ),
                                    Icon(
                                    Icons.star,
                                    size: 45,
                                    color: Colors.yellow,
                                    ),
                                    Icon(
                                    Icons.star,
                                    size: 45,
                                    color: Colors.yellow,
                                    ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
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

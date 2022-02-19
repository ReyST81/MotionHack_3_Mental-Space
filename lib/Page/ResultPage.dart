import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mental_space/Page/PsikologPage.dart';
import 'package:mental_space/Riwayat/RiwayatTransPage.dart';

class Resultpage extends StatelessWidget {
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
                      Navigator.pop(context);
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
                  Center(
                    child: Container(
                      child: Text(
                        "Result",
                        style: GoogleFonts.rhodiumLibre(fontSize: 60),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 50, right: 50),
                    child: Stack(
                      children: [
                        Image(
                          width: 300,
                          fit: BoxFit.contain,
                          image: AssetImage(
                            "assets/image/Ellipse.png",
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 105),
                          width: 300,
                          child: Text(
                            "You are in pretty good shape today",
                            style: GoogleFonts.notoSans(fontSize: 30),
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 40,),
                  Container(
                    height: 60,
                    width: 250,
                    margin: EdgeInsets.only(left: 60, right: 60),
                    child: RaisedButton(
                      textColor: Color(0xff0D1667),
                      color: Color(0xff1877F2),
                      child: Text(
                        "Consult Now!",
                        style: GoogleFonts.notoSans(fontSize: 24),
                      ),
                      onPressed: () {
                        Route route = MaterialPageRoute(builder: (context) => Psikologpage());
                        Navigator.push(context, route);
                      },
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

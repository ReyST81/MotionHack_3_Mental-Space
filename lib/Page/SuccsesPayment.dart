import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mental_space/Riwayat/RiwayatTransPage.dart';

class Succespage extends StatelessWidget {
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
              margin: EdgeInsets.only(top: 320),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Center(
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
                          margin: EdgeInsets.only(top: 115),
                          width: 300,
                          child: Text(
                            "Succesfull",
                            style: GoogleFonts.rhodiumLibre(fontSize: 40),
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
                        "see transaction",
                        style: GoogleFonts.notoSans(fontSize: 24),
                      ),
                      onPressed: () {
                        Route route = MaterialPageRoute(builder: (context) => RiwayatTrans());
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

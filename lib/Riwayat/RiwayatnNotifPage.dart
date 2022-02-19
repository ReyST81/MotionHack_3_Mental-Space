import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mental_space/Riwayat/RiwayatTransPage.dart';
import 'package:mental_space/Screens/HomeScreen.dart';

class Riwayat extends StatelessWidget {

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
                  alignment: Alignment.topCenter
                ),
                gradient: LinearGradient(
                  begin: const FractionalOffset(0.5, 0.3),
                  end: const FractionalOffset(0.0, 1.0),
                  colors: [
                    Color(0xff8B9CFF),
                    Colors.white
                ],
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
                    onPressed: (){
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
                    style: GoogleFonts.rhodiumLibre(fontSize: 60)
                    ),
                  ),
                  SizedBox(height: 20,),
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
                            child: Text("Notification", style: TextStyle(fontSize: 24),
                            ),
                            onPressed: () {
                              
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
                            child: Text("Transaction", style: TextStyle(fontSize: 24),
                            ),
                            onPressed: () {
                              Route route = MaterialPageRoute(builder: (context) => RiwayatTrans());
                              Navigator.push(context, route);
                            },
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30.0),
                            ),
                          ), 
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 300,),
                  Container(
                    child: Center(
                      child: Text(
                        "Sorry, no notification here :(",
                        style: GoogleFonts.rhodiumLibre(fontSize: 34),
                ),
              ),
            )
                ],
              ),
            )
            
          ],
        ),
      ),
    );
  }
}
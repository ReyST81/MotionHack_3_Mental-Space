import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mental_space/Screens/QuestionareScreens.dart';

class Questionarepage extends StatelessWidget {

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
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 180),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 110),
                        width: 500,
                        child: Text("Mental Healt Questionare",
                        style: GoogleFonts.rhodiumLibre(fontSize: 60),
                        textAlign: TextAlign.center
                        ),
                      ),
                      SizedBox(height: 220,),
                      Container(
                        margin: EdgeInsets.only(left: 70),
                        width: 540,
                        child: Center(
                          child: Text(
                            "There will be 38 questions. Take it calmly and don't rush.",
                            style: GoogleFonts.rhodiumLibre(fontSize: 34),
                            textAlign: TextAlign.center
                          ),
                        ),
                      ),
                      SizedBox(height: 40,),
                      Container(
                          height: 70,
                          width: 200,
                          margin: EdgeInsets.only(left: 60),
                          child: RaisedButton(
                            textColor: Color(0xff0D1667),
                            color: Color(0xff1877F2),
                            child: Text("Start Now!", style: TextStyle(fontSize: 24),
                            ),
                            onPressed: () {
                              Route route = MaterialPageRoute(builder: (context) => QuestionareScreens());
                              Navigator.push(context, route);
                            },
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30.0),
                            ),
                          ), 
                        ),
                    ],
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
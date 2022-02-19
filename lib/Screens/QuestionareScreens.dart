import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mental_space/HomeScreen.dart';
import 'package:mental_space/Page/ResultPage.dart';

class QuestionareScreens extends StatelessWidget {
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
                  colors: [
                    Color(0xff8B9CFF),
                    Colors.white
                  ],
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
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 110,left: 50),
                        width: 500,
                        child: Text("Mental Healt Questionare",
                        style: GoogleFonts.rhodiumLibre(fontSize: 40),
                        textAlign: TextAlign.center
                        ),
                      ),
                      SizedBox(height: 20,),
                      Container(
                        margin: EdgeInsets.only(left: 50),
                        child: Image(
                          width: 400,
                          fit: BoxFit.contain,
                          image: AssetImage("assets/image/QuestionareBorder.png",
                          ),
                        ),
                      ),
                      SizedBox(height: 40,),
                      Container(
                        margin: EdgeInsets.only(left : 40, right: 40),
                        child: Text(
                          "1. Have you been happy, satisfied, or happy with your personal life over the past month? (tick one)",
                          style: GoogleFonts.notoSans(fontSize: 25),
                          ),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        margin: EdgeInsets.only(left: 40, right: 40),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Very Happy", style: GoogleFonts.notoSans(fontSize: 22),),
                            Text("Very Unhappy",style: GoogleFonts.notoSans(fontSize: 22))
                          ],
                        ),
                      ),
                      SizedBox(height: 20,),
                      Container(
                        child: Image(
                          width: 600,
                          fit: BoxFit.contain,
                          image: AssetImage("assets/image/RadioButton.png",
                          ),
                        ),
                      ),
                      SizedBox(height: 40,),
                      Container(
                        margin: EdgeInsets.only(left : 40, right: 40),
                        child: Text(
                          "2. How much of the time have you felt lonely during the past month? ",
                          style: GoogleFonts.notoSans(fontSize: 25),
                          ),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        margin: EdgeInsets.only(left: 40, right: 40),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("All of the time", style: GoogleFonts.notoSans(fontSize: 22),),
                            Text("none the time",style: GoogleFonts.notoSans(fontSize: 22))
                          ],
                        ),
                      ),
                      SizedBox(height: 20,),
                      Container(
                        child: Image(
                          width: 600,
                          fit: BoxFit.contain,
                          image: AssetImage("assets/image/RadioButton.png",
                          ),
                        ),
                      ),
                      SizedBox(height: 40,),
                      Container(
                        margin: EdgeInsets.only(left : 40, right: 40),
                        child: Text(
                          "3.	How often did you become nervous or jumpy when faced with excitement or unexpected situations during the past month? ",
                          style: GoogleFonts.notoSans(fontSize: 25),
                          ),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        margin: EdgeInsets.only(left: 40, right: 40),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Always", style: GoogleFonts.notoSans(fontSize: 22),),
                            Text("Never",style: GoogleFonts.notoSans(fontSize: 22))
                          ],
                        ),
                      ),
                      SizedBox(height: 20,),
                      Container(
                        child: Image(
                          width: 600,
                          fit: BoxFit.contain,
                          image: AssetImage("assets/image/RadioButton.png",
                          ),
                        ),
                      ),
                      SizedBox(height: 40,),
                      Container(
                        margin: EdgeInsets.only(left : 40, right: 40),
                        child: Text(
                          "4.	During the past month, how much of the time have you felt that the future looks hopeful and promising?",
                          style: GoogleFonts.notoSans(fontSize: 25),
                          ),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        margin: EdgeInsets.only(left: 40, right: 40),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("All of the time", style: GoogleFonts.notoSans(fontSize: 22),),
                            Text("none of the time",style: GoogleFonts.notoSans(fontSize: 22))
                          ],
                        ),
                      ),
                      SizedBox(height: 20,),
                      Container(
                        child: Image(
                          width: 600,
                          fit: BoxFit.contain,
                          image: AssetImage("assets/image/RadioButton.png",
                          ),
                        ),
                      ),
                      SizedBox(height: 40,),
                      Container(
                        margin: EdgeInsets.only(left : 40, right: 40),
                        child: Text(
                          "5. How much of the time, during the past month, has your daily life been full of things that were interesting to you?",
                          style: GoogleFonts.notoSans(fontSize: 25),
                          ),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        margin: EdgeInsets.only(left: 40, right: 40),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("All of the time", style: GoogleFonts.notoSans(fontSize: 22),),
                            Text("none of the time",style: GoogleFonts.notoSans(fontSize: 22))
                          ],
                        ),
                      ),
                      SizedBox(height: 20,),
                      Container(
                        child: Image(
                          width: 600,
                          fit: BoxFit.contain,
                          image: AssetImage("assets/image/RadioButton.png",
                          ),
                        ),
                      ),
                      SizedBox(height: 40,),
                      Container(
                        margin: EdgeInsets.only(left : 40, right: 40),
                        child: Text(
                          "6. How much of the time, during the past month, did you feel relaxed and free from tension?",
                          style: GoogleFonts.notoSans(fontSize: 25),
                          ),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        margin: EdgeInsets.only(left: 40, right: 40),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("All of the time", style: GoogleFonts.notoSans(fontSize: 22),),
                            Text("none of the time",style: GoogleFonts.notoSans(fontSize: 22))
                          ],
                        ),
                      ),
                      SizedBox(height: 20,),
                      Container(
                        child: Image(
                          width: 600,
                          fit: BoxFit.contain,
                          image: AssetImage("assets/image/RadioButton.png",
                          ),
                        ),
                      ),
                      SizedBox(height: 40,),
                      Container(
                        margin: EdgeInsets.only(left : 40, right: 40),
                        child: Text(
                          "7.During the past month, how much of the time have you generally enjoyed the things you do?",
                          style: GoogleFonts.notoSans(fontSize: 25),
                          ),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        margin: EdgeInsets.only(left: 40, right: 40),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("All of the time", style: GoogleFonts.notoSans(fontSize: 22),),
                            Text("none of the time",style: GoogleFonts.notoSans(fontSize: 22))
                          ],
                        ),
                      ),
                      SizedBox(height: 20,),
                      Container(
                        child: Image(
                          width: 600,
                          fit: BoxFit.contain,
                          image: AssetImage("assets/image/RadioButton.png",
                          ),
                        ),
                      ),
                      SizedBox(height: 20,),
                      Center(
                        child: Container(
                          height: 80,
                          width: 200,
                          margin: EdgeInsets.only(left: 60, right: 60),
                          child: RaisedButton(
                            color: Color(0xff1877F2),
                            child: Text(
                              "Next",
                              style: GoogleFonts.rhodiumLibre(
                                  fontSize: 24, color: Color(0xff0D1667)),
                            ),
                            onPressed: () {
                              Route route = MaterialPageRoute(builder: (context) => Resultpage());
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
              )
            ],
          ),
      )
    );
  }
}
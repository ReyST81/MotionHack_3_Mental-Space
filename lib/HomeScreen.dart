import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mental_space/Page/SettingPage.dart';
import 'Page/DailyJournalPage.dart';
import 'Page/QuestionarePage.dart';
import 'Page/PsikologPage.dart';

class Homescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
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
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20, left: 640),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconButton(
                        onPressed: () {
                          Route route = MaterialPageRoute(builder: (context) => Setting());
                              Navigator.push(context, route);
                        },
                        icon: Icon(Icons.more_vert,
                        size: 40,),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 90),
                  margin: EdgeInsets.only(top: 150),
                  decoration: BoxDecoration(
                    color: Color(0xffE1E6FE),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40)),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 7),
                        blurRadius: 10,
                        color: Color(0xFF000000),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                              margin: EdgeInsets.only(left: 80),
                              child: Column(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                     Route route = MaterialPageRoute(builder: (context) => Dailyjournal());
                                      Navigator.push(context, route); 
                                    },
                                    child: Image.asset(
                                      "assets/image/Book.png",
                                      width: 250,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                  Text(
                                    "Daily Jurnal",
                                    style:
                                        GoogleFonts.rhodiumLibre(fontSize: 15),
                                  ),
                                ],
                              ),
                            ),
                          Container(
                              margin: EdgeInsets.only(left: 80),
                              child: Column(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                     Route route = MaterialPageRoute(builder: (context) => Questionarepage());
                                      Navigator.push(context, route); 
                                    },
                                    child: Image.asset(
                                      "assets/image/Questioner.png",
                                      width: 250,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                  Text(
                                    "Mental Health Questionare",
                                    style:
                                        GoogleFonts.rhodiumLibre(fontSize: 15),
                                  )
                                ],
                              ),
                            ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                              margin: EdgeInsets.only(left: 80),
                              child: Column(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                     Route route = MaterialPageRoute(builder: (context) => Psikologpage());
                                      Navigator.push(context, route); 
                                    },
                                    child: Image.asset(
                                      "assets/image/Consultation.png",
                                      width: 400,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                      // Container(
                      //   child: Center(
                      //     child: Container(
                      //       child: Image(
                      //         width: 400,
                      //         fit: BoxFit.contain,
                      //         image:
                      //             AssetImage("assets/image/Consultation.png"),
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      SizedBox(height: 20,),
                      Container(
                        child: Text(
                          "Artikel",
                          style: GoogleFonts.rhodiumLibre(
                            fontSize: 50,
                            color: Color(0xff0D1667)
                          ),
                        ),
                      ),
                      Divider(
                        color: Colors.black
                      ),
                      SizedBox(height: 20,),
                      Container(
                        margin: EdgeInsets.only(left: 60, right: 60),
                        child: Row(
                          children: [
                            Image(
                              width: 100,
                              fit: BoxFit.contain,
                              image: AssetImage(
                                "assets/image/Pic.png",
                                )
                              ),
                              SizedBox(width: 10,),
                              Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(right: 125),
                                    child: Row(
                                      children: [
                                        Text("Kati Krause", style: GoogleFonts.notoSans(fontSize: 22, fontWeight: FontWeight.bold),),
                                        Text(" in Anxy Magazine", style: GoogleFonts.notoSans(fontSize: 22))
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Text("Facebook’s Mental Health Problem", style: GoogleFonts.notoSans(fontSize: 25, fontWeight: FontWeight.bold),),
                                  ),
                                  SizedBox(height: 25,),
                                  Container(
                                    margin: EdgeInsets.only(left: 360),
                                    child: Text(
                                      "Mar 24,2017",
                                      style: GoogleFonts.notoSans(fontSize: 20, fontWeight: FontWeight.w100),

                                    ),
                                  )
                                ],
                              ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      Divider(
                        color: Colors.black
                      ),
                      SizedBox(height: 20,),
                      Container(
                        margin: EdgeInsets.only(left: 60, right: 60),
                        child: Row(
                          children: [
                            Image(
                              width: 100,
                              fit: BoxFit.contain,
                              image: AssetImage(
                                "assets/image/Pic.png",
                                )
                              ),
                              SizedBox(width: 10,),
                              Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(right: 125),
                                    child: Row(
                                      children: [
                                        Text("Kati Krause", style: GoogleFonts.notoSans(fontSize: 22, fontWeight: FontWeight.bold),),
                                        Text(" in Anxy Magazine", style: GoogleFonts.notoSans(fontSize: 22))
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Text("Facebook’s Mental Health Problem", style: GoogleFonts.notoSans(fontSize: 25, fontWeight: FontWeight.bold),),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 360),
                                    child: Text(
                                      "Mar 24,2017",
                                      style: GoogleFonts.notoSans(fontSize: 20, fontWeight: FontWeight.w100),
                                    ),
                                  )
                                ],
                              ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      Divider(
                        color: Colors.black
                      ),
                      SizedBox(height: 20,),
                      Container(
                        margin: EdgeInsets.only(left: 60, right: 60),
                        child: Row(
                          children: [
                            Image(
                              width: 100,
                              fit: BoxFit.contain,
                              image: AssetImage(
                                "assets/image/Pic.png",
                                )
                              ),
                              SizedBox(width: 10,),
                              Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(right: 125),
                                    child: Row(
                                      children: [
                                        Text("Kati Krause", style: GoogleFonts.notoSans(fontSize: 22, fontWeight: FontWeight.bold),),
                                        Text(" in Anxy Magazine", style: GoogleFonts.notoSans(fontSize: 22))
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Text("Facebook’s Mental Health Problem", style: GoogleFonts.notoSans(fontSize: 25, fontWeight: FontWeight.bold),),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 360),
                                    child: Text(
                                      "Mar 24,2017",
                                      style: GoogleFonts.notoSans(fontSize: 20, fontWeight: FontWeight.w100),
                                    ),
                                  )
                                ],
                              ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      Divider(
                        color: Colors.black
                      ),
                      SizedBox(height: 20,),
                      Container(
                        margin: EdgeInsets.only(left: 60, right: 60),
                        child: Row(
                          children: [
                            Image(
                              width: 100,
                              fit: BoxFit.contain,
                              image: AssetImage(
                                "assets/image/Pic.png",
                                )
                              ),
                              SizedBox(width: 10,),
                              Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(right: 125),
                                    child: Row(
                                      children: [
                                        Text("Kati Krause", style: GoogleFonts.notoSans(fontSize: 22, fontWeight: FontWeight.bold),),
                                        Text(" in Anxy Magazine", style: GoogleFonts.notoSans(fontSize: 22))
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Text("Facebook’s Mental Health Problem", style: GoogleFonts.notoSans(fontSize: 25, fontWeight: FontWeight.bold),),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 360),
                                    child: Text(
                                      "Mar 24,2017",
                                      style: GoogleFonts.notoSans(fontSize: 20, fontWeight: FontWeight.w100),
                                    ),
                                  )
                                ],
                              ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      Divider(
                        color: Colors.black
                      ),
                      SizedBox(height: 20,),
                      Container(
                        margin: EdgeInsets.only(left: 60, right: 60),
                        child: Row(
                          children: [
                            Image(
                              width: 100,
                              fit: BoxFit.contain,
                              image: AssetImage(
                                "assets/image/Pic.png",
                                )
                              ),
                              SizedBox(width: 10,),
                              Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(right: 125),
                                    child: Row(
                                      children: [
                                        Text("Kati Krause", style: GoogleFonts.notoSans(fontSize: 22, fontWeight: FontWeight.bold),),
                                        Text(" in Anxy Magazine", style: GoogleFonts.notoSans(fontSize: 22))
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Text("Facebook’s Mental Health Problem", style: GoogleFonts.notoSans(fontSize: 25, fontWeight: FontWeight.bold),),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 360),
                                    child: Text(
                                      "Mar 24,2017",
                                      style: GoogleFonts.notoSans(fontSize: 20, fontWeight: FontWeight.w100),
                                    ),
                                  )
                                ],
                              ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      Divider(
                        color: Colors.black
                      ),
                      SizedBox(height: 20,),
                      Container(
                        margin: EdgeInsets.only(left: 60, right: 60),
                        child: Row(
                          children: [
                            Image(
                              width: 100,
                              fit: BoxFit.contain,
                              image: AssetImage(
                                "assets/image/Pic.png",
                                )
                              ),
                              SizedBox(width: 10,),
                              Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(right: 125),
                                    child: Row(
                                      children: [
                                        Text("Kati Krause", style: GoogleFonts.notoSans(fontSize: 22, fontWeight: FontWeight.bold),),
                                        Text(" in Anxy Magazine", style: GoogleFonts.notoSans(fontSize: 22))
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Text("Facebook’s Mental Health Problem", style: GoogleFonts.notoSans(fontSize: 25, fontWeight: FontWeight.bold),),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 360),
                                    child: Text(
                                      "Mar 24,2017",
                                      style: GoogleFonts.notoSans(fontSize: 20, fontWeight: FontWeight.w100),
                                    ),
                                  )
                                ],
                              ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                ProfileUser(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ProfileUser extends StatelessWidget {
  const ProfileUser({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 100, left: 75),
      child: Row(
        children: [
          Container(
            child: Image.asset(
              "assets/image/Profile.png",
              height: 110,
              width: 200,
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(
            width: 30,
          ),
          Container(
            child: Image.asset(
              "assets/image/HelloText.png",
              height: 100,
              width: 300,
              fit: BoxFit.contain,
            ),
          )
        ],
      ),
    );
  }
}

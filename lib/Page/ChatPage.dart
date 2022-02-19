import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mental_space/Home/HomePage.dart';

class Chatpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
          child: Container(
            margin: EdgeInsets.only(top: 100, left: 20, right: 20),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => HomePage()),
                          (route) => false);
                      print("object");
                    },
                    icon: Icon(Icons.arrow_back),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 700),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [],
                  ),
                ),
                Center(
                  child: Text(
                    "Chat",
                    style: GoogleFonts.rhodiumLibre(fontSize: 60),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 70,
                    ),
                    Container(
                      height: 110,
                      width: 110,
                      child: RaisedButton(
                        textColor: Colors.black,
                        color: Color(0xffAAB6FF),
                        child: Icon(
                          Icons.videocam,
                          size: 70,
                        ),
                        onPressed: () {},
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(100.0),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 110,
                      width: 110,
                      child: RaisedButton(
                        textColor: Colors.black,
                        color: Color(0xffAAB6FF),
                        child: Icon(
                          Icons.phone,
                          size: 70,
                        ),
                        onPressed: () {},
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(100.0),
                        ),
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 70, left: 70),
                      child: Center(
                        child: Container(
                          margin: EdgeInsets.only(right: 300),
                          child: Text(
                            "Hello Adrue",
                            style: GoogleFonts.notoSans(
                                color: Color(0xff000000), fontSize: 20),
                          ),
                        ),
                      ),
                      width: 550,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Color(0xffCAD2FE),
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 470, top: 50),
                      child: Image(
                        width: 100,
                        height: 100,
                        fit: BoxFit.contain,
                        image: AssetImage("assets/image/ProfilPsikolog.png"),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 200, left: 70),
                      child: Center(
                        child: Container(
                          margin: EdgeInsets.only(left: 300),
                          child: Text(
                            "Hello",
                            style: GoogleFonts.notoSans(
                                color: Color(0xff000000), fontSize: 20),
                          ),
                        ),
                      ),
                      width: 550,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Color(0xffCAD2FE),
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 560, top: 180),
                      child: Image(
                        width: 100,
                        height: 100,
                        fit: BoxFit.contain,
                        image: AssetImage("assets/image/Profile.png"),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 500,
                ),
                Container(
                  padding: EdgeInsets.all(7),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.keyboard),
                        hintText: "Text Here",
                        border: InputBorder.none),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

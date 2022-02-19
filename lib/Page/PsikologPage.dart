import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mental_space/Screens/HomeScreen.dart';
import 'package:mental_space/Screens/Psikolok1Screen.dart';

class Psikologpage extends StatelessWidget {
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
                colors: [Color(0xff8B9CFF), Colors.white]),
            ),
            child: Stack(
              children: [
                Container(
              margin: EdgeInsets.only(top: 20, left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () {
                      Route route = MaterialPageRoute(builder: (context) => Homescreen());
                      Navigator.push(context, route);
                    },
                    icon: Icon(Icons.arrow_back),
                  )
                ],
              ),
            ),
                Container(
                  margin: EdgeInsets.only(top: 30),
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        Text(
                          "Consultation",
                          style: GoogleFonts.rhodiumLibre(fontSize: 60),
                          ),
                        Text(
                          "check your psychologist now !",
                          style: GoogleFonts.rhodiumLibre(fontSize: 25),
                          )
                      ],
                    ),
                  ),
                ),
                Container(
                padding: EdgeInsets.only(top: 60),
                margin: EdgeInsets.only(top: 210),
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
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 130,
                          child: IconButton(
                              onPressed: () {},
                              icon: Image.asset(
                                "assets/image/Filter.png",
                                fit: BoxFit.contain,
                                width: 130,
                              )),
                        ),
                        Container(
                          height: 40,
                          width: 150,
                          child: RaisedButton(
                            textColor: Color(0xff000000),
                            color: Color(0xffADB9FF),
                            child: Text(
                              "Gender",
                              style: GoogleFonts.notoSans(fontSize: 20),
                            ),
                            onPressed: () {},
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                        Container(
                          height: 40,
                          width: 150,
                          child: RaisedButton(
                            textColor: Color(0xff000000),
                            color: Color(0xffADB9FF),
                            child: Text(
                              "Place",
                              style: GoogleFonts.notoSans(fontSize: 20),
                            ),
                            onPressed: () {},
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 85),
                          height: 40,
                          width: 150,
                          child: RaisedButton(
                            textColor: Color(0xff000000),
                            color: Color(0xffADB9FF),
                            child: Text(
                              "time",
                              style: GoogleFonts.notoSans(fontSize: 20),
                            ),
                            onPressed: () {},
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Container(
                          height: 40,
                          width: 150,
                          child: RaisedButton(
                            textColor: Color(0xff000000),
                            color: Color(0xffADB9FF),
                            child: Text(
                              "experience",
                              style: GoogleFonts.notoSans(fontSize: 20),
                            ),
                            onPressed: () {},
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          child: Image.asset(
                            "assets/image/psikolok2.png",
                            width: 275,
                            fit: BoxFit.contain,
                            ),
                        ),
                        Container(
                          width: 290,
                          height: 520,
                          child: IconButton(
                              onPressed: () {
                                Route route = MaterialPageRoute(builder: (context) => ProfilPsikolok1());
                              Navigator.push(context, route);
                              },
                              icon: Image.asset(
                                "assets/image/psikolok1.png",
                                fit: BoxFit.contain,
                                width: 290,
                              )),
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          child: Image.asset(
                            "assets/image/psikolok4.png",
                            width: 275,
                            fit: BoxFit.contain,
                            ),
                        ),
                        Container(
                          child: Image.asset(
                            "assets/image/psikolok3.png",
                            width: 275,
                            fit: BoxFit.contain,
                            ),
                        )
                      ],
                    )
                  ],
                ),
              ),
                Container(
                margin: EdgeInsets.only(top: 180, right: 50, left: 50),
                padding: EdgeInsets.all(7),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    border: Border.all(color: Colors.black)),
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      hintText: "Search",
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

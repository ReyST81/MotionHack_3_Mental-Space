import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mental_space/Screens/PaymentScreen1.dart';
import 'package:mental_space/Page/PaymentPage.dart';
import 'package:mental_space/Page/ChatPage.dart';

class ProfilPsikolok1 extends StatelessWidget {
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
                                  "Rp. 100,000,00",
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
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    child: Center(
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            "Experience",
                                            style: GoogleFonts.notoSans(
                                                color: Color(0xff6b6f87),
                                                fontSize: 20),
                                          ),
                                          Text(
                                            "5 Years",
                                            style: GoogleFonts.notoSans(
                                                color: Colors.black,
                                                fontSize: 20),
                                          ),
                                        ],
                                      )
                                    ),
                                    width: 150,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      color: Color(0xffCAD2FE),
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                  ),
                                  Container(
                                    child: Center(
                                        child: Row(
                                      children: [
                                        SizedBox(
                                          width: 40,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Color(0xfffbbc04),
                                          size: 50.0,
                                        ),
                                        Text(
                                          "5",
                                          style: GoogleFonts.notoSans(
                                              color: Colors.black,
                                              fontSize: 20),
                                        ),
                                      ],
                                    )),
                                    width: 150,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      color: Color(0xffCAD2FE),
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              Container(
                                child: Center(
                                  child: Text(
                                    "Choose the date and time of consultation",
                                    style: GoogleFonts.notoSans(
                                        color: Color(0xff000000), fontSize: 20),
                                  ),
                                ),
                                width: 550,
                                height: 60,
                                decoration: BoxDecoration(
                                  color: Color(0xffCAD2FE),
                                  borderRadius: BorderRadius.circular(6),
                                ),
                              ),
                              SizedBox(height: 20,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                  child: Center(
                                    child: Text(
                                      "6",
                                      style: GoogleFonts.notoSans(
                                          color: Color(0xff000000), fontSize: 20),
                                    ),
                                  ),
                                  width: 80,
                                  height: 80,
                                  decoration: BoxDecoration(
                                    color: Color(0xffCAD2FE),
                                    borderRadius: BorderRadius.circular(6),
                                    ),
                                  ),
                                  Container(
                                  child: Center(
                                    child: Text(
                                      "March",
                                      style: GoogleFonts.notoSans(
                                          color: Color(0xff000000), fontSize: 20),
                                    ),
                                  ),
                                  width: 80,
                                  height: 80,
                                  decoration: BoxDecoration(
                                    color: Color(0xffCAD2FE),
                                    borderRadius: BorderRadius.circular(6),
                                    ),
                                  ),
                                  Container(
                                  child: Center(
                                    child: Text(
                                      "2022",
                                      style: GoogleFonts.notoSans(
                                          color: Color(0xff000000), fontSize: 20),
                                    ),
                                  ),
                                  width: 80,
                                  height: 80,
                                  decoration: BoxDecoration(
                                    color: Color(0xffCAD2FE),
                                    borderRadius: BorderRadius.circular(6),
                                    ),
                                  ),
                                  Container(
                                  child: Center(
                                    child: Icon(
                                      Icons.calendar_today,
                                          color: Color(0xfff2E3A59),
                                          size: 50.0,
                                    ),
                                  ),
                                  width: 80,
                                  height: 80,
                                  decoration: BoxDecoration(
                                    color: Color(0xffCAD2FE),
                                    borderRadius: BorderRadius.circular(6),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 20,),
                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      height: 40,
                                      width: 160,
                                      child: RaisedButton(
                                        textColor: Colors.black,
                                        color: Color(0xffADB9FF),
                                        child: Text("8.00", style: TextStyle(fontSize: 18),
                                        ),
                                        onPressed: () {},
                                        shape: new RoundedRectangleBorder(
                                          borderRadius: new BorderRadius.circular(10.0),
                                        ),
                                      ), 
                                    ),
                                    Container(
                                      height: 40,
                                      width: 160,
                                      child: RaisedButton(
                                        textColor: Colors.black,
                                        color: Color(0xffADB9FF),
                                        child: Text("8.00", style: TextStyle(fontSize: 18),
                                        ),
                                        onPressed: () {},
                                        shape: new RoundedRectangleBorder(
                                          borderRadius: new BorderRadius.circular(10.0),
                                        ),
                                      ), 
                                    ),
                                    Container(
                                      height: 40,
                                      width: 160,
                                      child: RaisedButton(
                                        textColor: Colors.black,
                                        color: Color(0xffADB9FF),
                                        child: Text("8.00", style: TextStyle(fontSize: 18),
                                        ),
                                        onPressed: () {},
                                        shape: new RoundedRectangleBorder(
                                          borderRadius: new BorderRadius.circular(10.0),
                                        ),
                                      ), 
                                    ),
                                    
                                  ],
                                ),
                              ),
                              SizedBox(height: 20,),
                              Container(
                                margin: EdgeInsets.only(left: 60),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 40,
                                      width: 160,
                                      child: RaisedButton(
                                        textColor: Colors.black,
                                        color: Color(0xffADB9FF),
                                        child: Text("8.00", style: TextStyle(fontSize: 18),
                                        ),
                                        onPressed: () {},
                                        shape: new RoundedRectangleBorder(
                                          borderRadius: new BorderRadius.circular(10.0),
                                        ),
                                      ), 
                                    ),
                                    SizedBox(width: 60,),
                                    Container(
                                      height: 40,
                                      width: 160,
                                      child: RaisedButton(
                                        textColor: Colors.black,
                                        color: Color(0xffADB9FF),
                                        child: Text("8.00", style: TextStyle(fontSize: 18),
                                        ),
                                        onPressed: () {},
                                        shape: new RoundedRectangleBorder(
                                          borderRadius: new BorderRadius.circular(10.0),
                                        ),
                                      ), 
                                    ),                                   
                                  ],
                                ),
                              ),
                              SizedBox(height: 30,),
                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 55,
                                      width: 250,
                                      child: RaisedButton(
                                        textColor: Color(0xff0D1667),
                                        color: Color(0xff1877F2),
                                        child: Text("Booking Now!", style: TextStyle(fontSize: 18),
                                        ),
                                        onPressed: () {
                                          Route route = MaterialPageRoute(builder: (context) => Paymentscreen1());
                                          Navigator.push(context, route);
                                        },
                                        shape: new RoundedRectangleBorder(
                                          borderRadius: new BorderRadius.circular(10.0),
                                        ),
                                      ), 
                                    ),
                                    SizedBox(width: 30,),
                                    Container(
                                      height: 55,
                                      width: 250,
                                      child: RaisedButton(
                                        textColor: Color(0xff0D1667),
                                        color: Color(0xffFF4141),
                                        child: Text("Subscribe Now!", style: TextStyle(fontSize: 18),
                                        ),
                                        onPressed: () {
                                          Route route = MaterialPageRoute(builder: (context) => Paymentpage());
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

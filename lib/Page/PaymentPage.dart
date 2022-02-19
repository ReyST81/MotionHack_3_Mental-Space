import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mental_space/Screens/PaymentScreen2.dart';
class Paymentpage extends StatelessWidget {
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
                    child: Column(
                      children: [
                        Text("Payment",
                            style: GoogleFonts.rhodiumLibre(fontSize: 60)),
                        Text("You can be our subscriber",
                            style: GoogleFonts.rhodiumLibre(fontSize: 20)),
                      ],
                    ),
                  ),
                  
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 200,
                    width: 550,
                    child: RaisedButton(
                      textColor: Colors.black,
                      color: Color(0xffCAD2FE),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 300, top: 10),
                            child: Text(
                            "Paket 1 month",
                            style: GoogleFonts.notoSans(fontSize: 30),
                            ),
                          ),
                          SizedBox(height: 15,),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                                    width: 190,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      color: Color(0xffCAD2FE),
                                      borderRadius: BorderRadius.circular(6),
                                      boxShadow: [
                                        BoxShadow(
                                          offset: Offset(0, 15),
                                          blurRadius: 10,
                                          color: Colors.black54,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Center(
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            "Age",
                                            style: GoogleFonts.notoSans(
                                                color: Color(0xff6b6f87),
                                                fontSize: 20),
                                          ),
                                          Text(
                                            "20-30",
                                            style: GoogleFonts.notoSans(
                                                color: Colors.black,
                                                fontSize: 20),
                                          ),
                                        ],
                                      )
                                    ),
                                    width: 190,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      color: Color(0xffCAD2FE),
                                      borderRadius: BorderRadius.circular(6),
                                      boxShadow: [
                                        BoxShadow(
                                          offset: Offset(0, 15),
                                          blurRadius: 10,
                                          color: Colors.black54,
                                        ),
                                      ],
                                    ),
                                  ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20,),
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                "1 month for 4 times meet",
                                style: GoogleFonts.notoSans(
                                  fontSize: 20,
                                  color: Color(0xff6c7088)
                                  ),
                                ),
                                Text(
                                  "Rp.350.000",
                                  style: TextStyle(
                                    color: Color(0xffE51003),
                                    fontSize: 20
                                    ),
                                  )
                              ],
                            ),
                          ),
                        ],
                      ),
                      onPressed: () {
                        Route route = MaterialPageRoute(builder: (context) => Paymentscreen2());
                        Navigator.push(context, route);
                      },
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(10.0),
                      ),
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

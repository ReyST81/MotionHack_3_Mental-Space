import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mental_space/Page/SuccsesPayment.dart';

class Paymentscreen1 extends StatelessWidget {
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
                    child: Text("Payment",
                        style: GoogleFonts.rhodiumLibre(fontSize: 60)),
                  ),
                  Container(
                    child: Container(
                      margin: EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Consultation",
                            style: GoogleFonts.notoSans(
                                color: Color(0xff000000), fontSize: 20),
                          ),
                          Icon(Icons.arrow_drop_down),
                        ],
                      ),
                    ),
                    width: 600,
                    height: 70,
                    decoration: BoxDecoration(
                      color: Color(0xffCAD2FE),
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 60, right: 60),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Psychologist/meet",
                              style: GoogleFonts.rhodiumLibre(fontSize: 20),
                            ),
                            Text(
                              "Rp. 100,000,00",
                              style: GoogleFonts.notoSans(fontSize: 20),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Tax",
                              style: GoogleFonts.notoSans(fontSize: 20),
                            ),
                            Text(
                              "Rp. 1,000,00",
                              style: GoogleFonts.notoSans(fontSize: 20),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Discount",
                              style: GoogleFonts.notoSans(fontSize: 20),
                            ),
                            Text(
                              "Rp. 0",
                              style: GoogleFonts.notoSans(fontSize: 20),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Total",
                              style: GoogleFonts.notoSans(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Rp. 101,000,00",
                              style: GoogleFonts.notoSans(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          child: Container(
                            margin: EdgeInsets.only(left: 10, right: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "payment method",
                                  style: GoogleFonts.rhodiumLibre(
                                      color: Color(0xff000000), fontSize: 20),
                                ),
                                Icon(Icons.arrow_drop_up),
                              ],
                            ),
                          ),
                          width: 600,
                          height: 70,
                          decoration: BoxDecoration(
                            color: Color(0xffCAD2FE),
                            borderRadius: BorderRadius.circular(6),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                "assets/image/Gopay.png",
                                width: 130,
                                fit: BoxFit.contain,
                              ),
                              Text(
                                "Rp. 101,000,00",
                                style: GoogleFonts.notoSans(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          child: Container(
                            margin: EdgeInsets.only(left: 10, right: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "kode/voucher",
                                  style: GoogleFonts.rhodiumLibre(
                                      color: Color(0xff000000), fontSize: 20),
                                ),
                                Icon(Icons.arrow_drop_up),
                              ],
                            ),
                          ),
                          width: 600,
                          height: 70,
                          decoration: BoxDecoration(
                            color: Color(0xffCAD2FE),
                            borderRadius: BorderRadius.circular(6),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 500),
                                child: Text(
                                  "Summary",
                                  style: GoogleFonts.notoSans(
                                    fontSize: 18,
                                    color: Color(0xff6c7088),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          child: Container(
                            margin:
                                EdgeInsets.only(top: 10, left: 10, right: 10),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Sunday,6 March 2022",
                                      style: GoogleFonts.rhodiumLibre(
                                          color: Color(0xff000000),
                                          fontSize: 20),
                                    ),
                                    Image.asset("assets/image/Gopay.png")
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("time : 8.00 am",
                                        style: GoogleFonts.rhodiumLibre(
                                            color: Color(0xff000000),
                                            fontSize: 20)),
                                    Text(
                                      "Rp. 101,000,00",
                                      style: GoogleFonts.notoSans(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          width: 600,
                          height: 80,
                          decoration: BoxDecoration(
                            color: Color(0xffCAD2FE),
                            borderRadius: BorderRadius.circular(6),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 70,),
                  Container(
                    height: 50,
                    width: 160,
                    child: RaisedButton(
                      textColor: Color(0xff0D1667),
                      color: Color(0xff1877F2),
                      child: Text(
                        "Pay",
                        style: TextStyle(fontSize: 18),
                      ),
                      onPressed: () {
                        Route route = MaterialPageRoute(builder: (context) => Succespage());
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

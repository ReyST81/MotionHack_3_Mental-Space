import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Pesan extends StatelessWidget {
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
              margin: EdgeInsets.only(top: 120),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    child: Text("Message",
                    style: GoogleFonts.rhodiumLibre(fontSize: 60)
                    ),
                  ),
                  SizedBox(height: 400,),
                  Container(
                    child: Center(
                      child: Text(
                        "Ups, no history here!",
                        style: GoogleFonts.rhodiumLibre(fontSize: 24),
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
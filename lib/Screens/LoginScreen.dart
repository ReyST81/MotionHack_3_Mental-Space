import 'package:flutter/material.dart';
import 'package:mental_space/Home/HomePage.dart';
import '../Page/RegisterPage.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {

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
              colors: [
                Color(0xff8B9CFF),
                Colors.white
              ]
            )
          ),
          width: double.infinity,
          child: Container(
            margin: EdgeInsets.only(left: 20, top: 100, right: 20),
            child: Column(
              children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                      onPressed: (){
                        Navigator.pop(context);
                      },
                       icon: Icon(Icons.arrow_back)),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      child: Center(
                        child: Text(
                          "Log In",
                          style: TextStyle(
                           fontSize: 60,
                         ),
                        ),
                      ),                  
                    ),
                    SizedBox(height: 180,),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                          "Email",
                          style: TextStyle(fontSize: 17),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(7),
                      decoration: BoxDecoration(
                        color: Colors.white,  
                        borderRadius: BorderRadius.all(
                            Radius.circular(10.0)),  
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.email),
                          hintText: "Email",
                          border: InputBorder.none
                      ),  
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                          "Password",
                          style: TextStyle(fontSize: 17),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(7),
                      decoration: BoxDecoration(
                        color: Colors.white,  
                        borderRadius: BorderRadius.all(
                            Radius.circular(10.0)
                        ), 
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock ),
                          hintText: "Password",
                          border: InputBorder.none
                        ),  
                      ),
                    ),
                    SizedBox(height: 50,),
                    Container(
                      child: Center(
                        child: Container(
                          width: double.infinity,
                          height: 40,
                          margin: EdgeInsets.only(right: 250, left: 250),
                          child: ElevatedButton(
                          onPressed: (){
                            Route route = MaterialPageRoute(builder: (context) => HomePage());
                              Navigator.push(context, route);
                          },
                          child: TextButton(
                              onPressed: (){
                                Route route = MaterialPageRoute(builder: (context) => HomePage());
                                Navigator.push(context, route);
                              },
                              child: Text(
                                "Log in",
                                style: GoogleFonts.notoSans(color: Color(0xff0D1667)),
                                )
                            ),
                            style: ElevatedButton.styleFrom(
                              elevation: 0,
                              primary: Color(0xff1877F2),
                            ),  
                          ),
                        )
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Dont Have An Account?",
                            style: TextStyle(color: Color(0xff0D1667))
                            ),
                          TextButton(
                            onPressed: (){
                              Route route = MaterialPageRoute(builder: (context) => RegisterPage());
                              Navigator.push(context, route);
                            },
                            child: Text(
                              "Sign in",
                              style: TextStyle(
                                color: Color(0xff0042AF)
                              ),
                              )
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
        ),
      ),
    );
  }
}
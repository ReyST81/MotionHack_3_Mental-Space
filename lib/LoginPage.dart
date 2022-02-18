import 'package:flutter/material.dart';
import 'package:mental_space/LoginScreen.dart';
import 'RegisterPage.dart';


class Loginpage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Container( 
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/image/Bubbles.png"),
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
            
            width: double.infinity,
            child: Container(
              margin: EdgeInsets.only(top: 350, left: 20, right: 20),
              child: Column(
                children: [
                  Container(
                  child: Image.asset("assets/image/logo.png"),
                ),
                SizedBox(height: 200,),
                Container(
                    child: Center(
                      child: Container(
                        width: double.infinity,
                        height: 50,
                        margin: EdgeInsets.only(left: 60, right: 60),
                        child: ElevatedButton(
                          onPressed: (){
                            Route route = MaterialPageRoute(builder: (context) => LoginScreen());
                              Navigator.push(context, route);
                          },
                          child: Text(
                            "Login With Email",
                            style: TextStyle(color: Color(0xff0D1667),fontSize: 15),
                            ),
                            style: ElevatedButton.styleFrom(
                              elevation: 0,
                              primary: Colors.white,
                            ),
                          ),
  
                      ),
                      
                    ),
                ),
                SizedBox(height: 30,),
                Container(
                  child: Text(
                    "- or connect -",
                    style: TextStyle(fontSize: 15),
                    ),
                ),
                SizedBox(height: 20,),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 65,
                        width: 65,
                        child: IconButton(
                          onPressed: (){}, 
                            icon: Image.asset("assets/image/Google_Icon.png")
                          ),
                        ),
                      Container(
                        height: 65,
                        width: 65,
                        child: IconButton(
                        onPressed: (){}, 
                        icon: Image.asset("assets/image/Facebook_Icon.png")
                      ),
                    )  
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Dont Have An Account?",
                        style: TextStyle(color: Color(0xff0D1667), fontSize: 15)
                        ),
                      TextButton(
                        onPressed: (){
                          Route route = MaterialPageRoute(builder: (context) => RegisterPage());
                          Navigator.push(context, route);
                        },
                        child: Text("Sign in")
                      ),
                    ],
                  ),
                ),
                ],
              ),
            )
          )
        )
      )
    );
  }
}
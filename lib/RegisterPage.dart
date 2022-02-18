import 'package:flutter/material.dart';
import 'package:mental_space/LoginScreen.dart';
import 'RegisterPage.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
bool firstValue = false;

bool secondValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
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
                      height: 20,
                    ),
                    Container(
                      child: Center(
                        child: Image.asset("assets/image/logo.png"),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      child: Text(
                          "Name",
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Name",
                          border: OutlineInputBorder(
                            borderSide: BorderSide()
                        )
                      ),  
                      ),
                    ),
                     SizedBox(height: 10,),
                    Container(
                      child: Text(
                          "Email",
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      child: TextField(
                        decoration: InputDecoration(
                        hintText: "Email",
                        border: OutlineInputBorder(
                          borderSide: BorderSide()
                        )
                      ),  
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      child: Text(
                          "Password",
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Password",
                          border: OutlineInputBorder(
                            borderSide: BorderSide()
                        )
                      ),  
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      child: Text(
                          "Confirm Password",
                      ),
                    ),
                     SizedBox(height: 10,),
                    Container(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Confirm Password",
                          border: OutlineInputBorder(
                            borderSide: BorderSide()
                        )
                      ),  
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      child: Row(
                        children: <Widget>[
                          Checkbox(
                            value: firstValue,
                            checkColor: Colors.white,
                            activeColor: Colors.red,
                            onChanged: (bool? value1){
                              if (value1 != null){
                                setState((){
                                  firstValue = value1;
                              });
                              }
                            },
                          ),
                          Text("By signing up, you agree to Terms of Service and Privacy Policy.")
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      child: Center(
                        child: Text("or"),
                      )
                    ),
                    SizedBox(height: 20,),
                      Container(
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("already have an account?"),
                              TextButton(
                                onPressed: (){
                                  Route route = MaterialPageRoute(builder: (context) => LoginScreen());
                                  Navigator.push(context, route);
                                },
                                child: Text("Log in")
                              )
                            ],
                          ),
                        ),
                      ),
                    SizedBox(height: 20,),
                    Container(
                      child: Center(
                        child: ElevatedButton(
                          onPressed: (){},
                          child: Text(
                            "Login",
                            style: TextStyle(color: Color(0xff0D1667)),
                            ),
                            style: ElevatedButton.styleFrom(
                              elevation: 0,
                              primary: Color(0xff1877F2),
                            ),
                          ),
                        ),
                      ),
                      
                    ],
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
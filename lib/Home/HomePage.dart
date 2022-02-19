import 'package:flutter/material.dart';
import 'package:mental_space/Screens/HomeScreen.dart';
import 'package:mental_space/Screens/PesanPage.dart';
import 'package:mental_space/Riwayat/RiwayatnNotifPage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  final _layoutPage =[
    Homescreen(),
    Riwayat(),
    Pesan(),

  ];
  void _onTabItem(int index){
    setState((){
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _layoutPage.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar( 
        backgroundColor: Colors.blue, 
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.black,),
            label: "home",
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: "history",
          ),    
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: "chat",
          ), 
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onTabItem,
      ),
    );
  }
}
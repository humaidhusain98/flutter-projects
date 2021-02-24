
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'griddashboard.dart';

class Home extends StatefulWidget {
  @override
  HomeState createState() => new HomeState();
}

class HomeState extends State<Home> {
  int _currentIndex =2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(143, 148, 251, 1),


      ),

      body: GridDashboard(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              title:  Text('Advisory'),
              backgroundColor: Color.fromRGBO(143, 148, 251, 1),

          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.location_on),
            title:  Text('Near'),
            backgroundColor: Color.fromRGBO(143, 148, 251, 1),

          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title:  Text('Home'),
            backgroundColor: Color.fromRGBO(143, 148, 251, 1),

          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.card_travel),
            title:  Text('Welfare'),
            backgroundColor: Color.fromRGBO(143, 148, 251, 1),

          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.face),
            title:  Text('Mine'),
            backgroundColor: Color.fromRGBO(143, 148, 251, 1),

          ),
        ],
        onTap: (index){
          setState((){
            _currentIndex=index;
          });
        },
        type: BottomNavigationBarType.fixed,
      ),


    );
  }

}
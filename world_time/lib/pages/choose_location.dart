import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation>
{


  @override
  Widget build(BuildContext context) {

  return Scaffold(
  backgroundColor: Colors.grey,
  appBar: AppBar(
  backgroundColor: Colors.black,
  title: Text('Choose a Location'),
  centerTitle: true,
  elevation: 0,

  ),


  );
  }
  }

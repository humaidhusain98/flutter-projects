import 'package:flutter/material.dart';
import 'pages/login.dart';
import 'pages/signup.dart';
import 'pages/home.dart';


void main() => runApp(MaterialApp(
  initialRoute: '/',
  routes :{
    '/':(context) => Login(),
    '/signup': (context) => Signup(),
    '/home' :(context) => Home(),
  },


));

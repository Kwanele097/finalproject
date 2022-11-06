import 'package:flutter/material.dart';
import 'screens/loading_screen.dart';
import 'package:mausam/home.dart';
import 'package:mausam/contact.dart';
import 'package:mausam/about.dart';
import 'package:mausam/login.dart';
import 'package:mausam/register.dart';
import 'package:mausam/screens/loading_screen.dart';
void main() => runApp( MaterialApp(

  initialRoute: '/home',
  routes: {

    '/contact': (context)=>  const Contact(),
    '/about': (context)=>   About(),
    '/home': (context)=>   Home(),
    '/login': (context)=>  const MyLogin(),
    '/register': (context)=>  const MyRegister(),
    '/loading_screen': (context)=>  const LoadingScreen(),
  },
));


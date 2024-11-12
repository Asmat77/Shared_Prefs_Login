import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mytestingapp/homepage.dart';
import 'package:mytestingapp/loginpage.dart';
import 'package:mytestingapp/splashpage.dart';


void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      home: SplashPage(),
    );
  }
}
import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mytestingapp/homepage.dart';
import 'package:mytestingapp/loginpage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashPage extends StatefulWidget{
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), ()async{
      SharedPreferences prefs=await SharedPreferences.getInstance();
      bool check=prefs.getBool(LogInPage.LOGIN) ?? false;
      Widget navigateTo=LogInPage();
      if(check){
        navigateTo=HomePage();
      }
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>navigateTo));
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xff0B6224),
        ),
        child: Center(child: Container(
          height: 200,
          width: 250,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(21),
            image: DecorationImage(image:AssetImage("asset/image/smartphone-with-close-up-wet-green-leaf-with-dew-generative-ai.jpg"),fit: BoxFit.cover )
          ),
        )),
      ),
    );
  }
}
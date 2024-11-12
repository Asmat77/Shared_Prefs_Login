import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mytestingapp/homepage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LogInPage extends StatelessWidget{
  static const String LOGIN="login";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Log In"),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          height: 450,
          width: 350,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(21),
            color: Colors.grey,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Log In",style: TextStyle(color: Colors.white,fontSize: 30),),
              Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(11),
                  border: Border.all(color: Colors.white)
                ),
              ),
              Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.white,
                    borderRadius: BorderRadius.circular(11),
                    border: Border.all(color: Colors.white)
                ),
              ),
              InkWell(
                onTap: ()async{
                  SharedPreferences prefs=await SharedPreferences.getInstance();
                  prefs.setBool(LOGIN, true);
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomePage()));
                },
                child: Container(
                  height: 50,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.white,
                      borderRadius: BorderRadius.circular(11),
                      border: Border.all(color: Colors.white)
                  ),
                  child: Center(child: Text("LogIn",style: TextStyle(fontSize: 25),)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
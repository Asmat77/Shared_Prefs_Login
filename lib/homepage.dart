import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mytestingapp/loginpage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(

        appBar: AppBar(


          title: Text("Home"),
          centerTitle: true,
          backgroundColor: Colors.blue,
          bottom: TabBar(
            indicatorSize: TabBarIndicatorSize.tab,
              tabs: [
            Tab(
              text: "Teaching",
            ),
            Tab(
              text: "Police",
            ),
            Tab(
              text: "Engineer",
            )
          ]),


          actions: [
            InkWell(
        onTap: ()async{
          SharedPreferences prefs=await SharedPreferences.getInstance();
          prefs.setBool(LogInPage.LOGIN, false);
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LogInPage()));
      },
        child: Icon(Icons.logout_outlined,size: 40,)
      ),
          ],

        ),
        body: TabBarView(children: [
          Container(
            padding: EdgeInsets.all(10),
            height: double.infinity,
            width: double.infinity,
            color: Colors.purple,
            child: GridView.builder(

                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 11,
                    crossAxisSpacing: 11,
                    crossAxisCount: 2), itemBuilder: (context,index){
              return Container(
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(15)
                ),
              );

            }),
          ),
          Container(
            padding: EdgeInsets.all(10),
            height: double.infinity,
            width: double.infinity,
            color: Colors.green,
            child: GridView.builder(

                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 11,
                    crossAxisSpacing: 11,
                    crossAxisCount: 2), itemBuilder: (context,index){
              return Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(15)
                ),
              );

            }),
          ),
          Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.orange,
            child: GridView.builder(

                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 11,
                    crossAxisSpacing: 11,
                    crossAxisCount: 2), itemBuilder: (context,index){
              return Container(
                decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(15)
                ),
              );

            }),
          ),
        ])
      ),
    );
  }
}
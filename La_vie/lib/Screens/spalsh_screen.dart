import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:la_vie/Screens/navigation_bar.dart';
import 'package:la_vie/login/login_screen.dart';
import 'package:la_vie/sharedpreferences.dart';

class SpalshScreen extends StatelessWidget{
  @override


  @override


  Widget build(BuildContext context) {
    // TODO: implement build
    return AnimatedSplashScreen(

      splash:SizedBox(width: 136,height: 27,child:Image.asset( "assets/img.png"),),

     nextScreen:CacheHelper.getData(key: "apiToken")==null? LoginScreen():MyNavigationBar(),
     splashTransition:SplashTransition.slideTransition,
    animationDuration:const Duration(seconds: 2),

     // body: Padding(padding: EdgeInsets.all(30),
      //  child: Column(mainAxisAlignment: MainAxisAlignment.center,children: [Row(children:[ SizedBox(width: 90,),Container(child: Image.asset("assets/img.png"),width: 136,)])],

       // ),
    //  ),
    );
  }
}
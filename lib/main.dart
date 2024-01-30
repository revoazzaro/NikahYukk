import 'package:flutter/material.dart';
import 'package:nikahyukk/homepage.dart';
import 'package:nikahyukk/landingpage.dart';
import 'package:nikahyukk/loginpage.dart';
import 'package:nikahyukk/navbar.dart';
import 'package:nikahyukk/profilepage.dart';
import 'package:nikahyukk/profilesetting.dart';
import 'package:nikahyukk/registerpage.dart';
import 'package:nikahyukk/trendingpage.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(
    home: landingpage(),
    debugShowCheckedModeBanner: false,
    initialRoute: "/nikahyukk",
    getPages: [
      GetPage(name: "/nikahyukk", page: () => landingpage(), transition: Transition.fade, transitionDuration: Duration(milliseconds: 500)),
      GetPage(name: "/loginpage", page: () => loginpage(), transition: Transition.fade, transitionDuration: Duration(milliseconds: 500)),
      GetPage(name: "/registerpage", page: () => registerpage(), transition: Transition.fade, transitionDuration: Duration(milliseconds: 500)),
      GetPage(name: "/homepage", page: () => homepage(), transition: Transition.fade, transitionDuration: Duration(milliseconds: 500)),
      GetPage(name: "/trending", page: () => trendingpage(), transition: Transition.fade, transitionDuration: Duration(milliseconds: 500)),
      GetPage(name: "/profile", page: () => profilepage(), transition: Transition.fade, transitionDuration: Duration(milliseconds: 500)),
      GetPage(name: "/profilesetting", page: () => profilesetting(), transition: Transition.fade, transitionDuration: Duration(milliseconds: 500)),
      GetPage(name: "/Navbar", page: () => Navbar(currentIndex: 0, onTap: (index) => index ,), transition: Transition.fade, transitionDuration: Duration(milliseconds: 500)),
    ],
    // routes: <String, WidgetBuilder>{
    //   "nikahyukk" :(context) => landingpage(),
    //   "loginpage" :(context) => loginpage(),
    //   "registerpage" :(context) => registerpage(),
    //   "homepage" :(context) => homepage(),
    //   "trending" :(context) => trendingpage(),
    //   "profile" :(context) => profilepage(),
    //   "profilesetting" :(context) => profilesetting(),
    //   "Navbar" :(context) => Navbar(currentIndex: 0, onTap: (index) => index,),
    // },
  ));
}



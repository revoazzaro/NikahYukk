import 'package:flutter/material.dart';
import 'package:nikahyukk/homepage.dart';
import 'package:nikahyukk/profilepage.dart';
import 'package:nikahyukk/trendingpage.dart';

class Navbar extends StatefulWidget {
  const Navbar({Key? key, required int currentIndex, required void Function(int index) onTap}) : super(key: key);

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {

  List<Widget> pages = [
    homepage(),
    trendingpage(),
    profilepage()
  ];
  
  int currentIndex = 0;
  void onTap(int index){
    setState(() {
      currentIndex = index;
    });
  } 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 30,
        onTap: onTap,
        currentIndex: currentIndex,
        selectedItemColor: Colors.black54,
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.local_fire_department), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "")
        ],
      )
    );
  }
}
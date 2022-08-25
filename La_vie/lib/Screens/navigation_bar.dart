import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:la_vie/Screens/home_screen.dart';
import 'package:la_vie/Screens/notifications.dart';
import 'package:la_vie/Screens/plant.dart';
import 'package:la_vie/Screens/profile.dart';
import 'package:la_vie/Screens/scan_screen.dart';

class MyNavigationBar extends StatefulWidget {
  @override
  State<MyNavigationBar> createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
  var index;
  final int _pageindex = 0;
  PageController ?_pageController;

  final int _Page=0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }



  @override
  Widget build(BuildContext context) {

    return Scaffold( body: PageView(

        controller: _pageController,
        children: <Widget>[
        Blogs(),
          ScanScreen(),
          HomeScreen(),
          NotificationsScreen(),
          ProfileScreen()
        ],
        onPageChanged: (int index) {
          setState(() {

            _pageController?.jumpToPage(index);
          });
        }
    ),

      bottomNavigationBar:CurvedNavigationBar(
backgroundColor: Colors.white,
      index: 4,
      buttonBackgroundColor: Colors.green,
      color: Colors.white,

      animationDuration:const Duration(milliseconds: 300) ,
animationCurve: Curves.easeInOut,
      height: 60,
      items: const [
        Icon(Icons.energy_savings_leaf_outlined,size:30,),

        Icon(Icons.document_scanner_outlined,size: 30,),
        Icon(Icons.home_filled,size:30,),
        Icon(Icons.notifications_none,size: 30,),
        Icon(Icons.person_outlined,size: 30,)
      ],
        onTap: (int index) {
          setState(() {
            _pageController?.jumpToPage(index);
          });

        },
    ) ,
    );}}
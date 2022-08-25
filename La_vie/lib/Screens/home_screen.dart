import 'package:flutter/material.dart';
import 'package:la_vie/Screens/search_screen.dart';
import 'package:la_vie/component.dart';

import '../Home/Categories/All.dart';
import '../Home/Categories/plants.dart';
import '../Home/Categories/seeds.dart';
import '../Home/Categories/tools.dart';
import '../chart_model/chart_screens.dart';


class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool ontap=false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 90,
                  width: 105,
                  child: Image.asset("assets/img.png"),
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(children: [
                  InkWell(onTap:
                  (){navigateto(context, SearchScreen());},
                    child: Container(
                        width: MediaQuery.of(context).size.width/1.34,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.black12),child: Row(children: const [SizedBox(width: 10,),
                              Icon(Icons.search,size: 30,color: Colors.grey,),SizedBox(width: 10,),
                      Text("Search",style: TextStyle(color: Colors.grey,fontSize: 18,fontWeight: FontWeight.w600),)
                    ],),
                       ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                      height: 50,
                      width: 51,
                      decoration: BoxDecoration(
                          color: const Color(0xff1ABC00),
                          borderRadius: BorderRadius.circular(15)),
                      child: IconButton(
                          onPressed: () {navigateto(context, ChartScreen());},
                          icon: const Icon(
                            Icons.shopping_cart_outlined,
                            color: Colors.white,
                            size: 27,
                          ))),
                ]),const SizedBox(height: 15,)
          ,Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children:[   DefaultTabController(length: 4, child:  Column(
                   children:[ TabBar(isScrollable: true, indicator:BoxDecoration(borderRadius: BorderRadius.circular(10),
    border: Border.all(color: Colors.green,width: 3)) ,
    unselectedLabelColor: Colors.white10,
    // Creates border


    tabs: [
    Container(height: 35,width:70,padding: const EdgeInsets.all(5),decoration:BoxDecoration(
      borderRadius: BorderRadius.circular(10),color: Colors.white10
    ),child: Text("All",style: TextStyle(fontSize: 18,color:ontap? Colors.black45:Colors.green),textAlign: TextAlign.center,)),
      Container(height: 35,width:70,padding: const EdgeInsets.all(5),decoration:BoxDecoration(
          borderRadius: BorderRadius.circular(10),color: Colors.white10
      ),child: Text("Plants",style: TextStyle(fontSize: 17,color:ontap? Colors.black45:Colors.green),textAlign: TextAlign.center,),),
          Container(height: 35,width:70,padding: const EdgeInsets.all(5),decoration:BoxDecoration(
              borderRadius: BorderRadius.circular(10),color: Colors.white10
          ),child:   Text("Seeds",style: TextStyle(fontSize: 17,color:ontap? Colors.black45:Colors.green),textAlign: TextAlign.center,),
          ),              Container(height: 35,width:70,padding: const EdgeInsets.all(5),decoration:BoxDecoration(
                  borderRadius: BorderRadius.circular(10),color: Colors.white10
              ),child: Text("Tools",style: TextStyle(fontSize: 17,color:ontap? Colors.black45:Colors.green),textAlign: TextAlign.center,)
    ,


      ) ]),const SizedBox(height: 15,),
                   SingleChildScrollView(
                     child: Container(
    width: MediaQuery.of(context).size.width,
    height: 450,
    color: Colors.black12,


                       child: Scaffold(body:
    TabBarView(children: [
                             AllCategories(),
                             Plants(),
                             Seeds(),
                             Tools(),

                         ],),
                          ),
                     ),
                   ),] ),
                 )

                 ],
                ) ],
            ),
            const SizedBox(
              height: 10,
            ),
    ])));}}
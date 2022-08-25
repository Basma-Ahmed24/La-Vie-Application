import 'package:flutter/material.dart';

import '../../Screens/home_screen.dart';
import '../../component.dart';
import 'blog_info.dart';

class Blogs extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Scaffold(body:Padding(padding: const EdgeInsets.all(10),
        child: ListView(
          children:[ Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [Row(children:[ IconButton(onPressed: (){
                navigateto(context, HomeScreen());
              }, icon: const Icon(Icons.west,size: 30,)),SizedBox(width: MediaQuery.of(context).size.width/3.8,),
                const Text("Blogs",style: TextStyle(fontSize:24,fontWeight: FontWeight.w600 ),)],
              )
                ,const SizedBox(height: 15,)



                            ,  Container(
                                width: 376,
                                height: 161,

                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.white,
                                ),
                                child: Row(children: [
                                  const Expanded(
                                    child: Image(
                                        image: AssetImage(
                                            "assets/img_7.png")),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(child:  Column(crossAxisAlignment: CrossAxisAlignment.stretch,mainAxisAlignment: MainAxisAlignment.start,children: [
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    const Text(
                                      "2 days ago",
                                      style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400,color: Colors.green),
                                      maxLines: 3,
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    TextButton(onPressed: (){BlogInfo();},child:const Text("5 Tips to treate plants",
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black
                                        )),),
                                    const SizedBox(height: 20,),
                                    const Text("leaf, in botany, any usually",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,color: Colors.grey
                                        )),
                                    const SizedBox(height: 10,),
                                    const Text("leaf, in botany, any usually",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,color: Colors.grey
                                        )),



                                  ])
                                  )])
                                ,
                              ),
                const SizedBox(height: 15,)
                , Container(
                  width: 376,
                  height: 161,

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  child: Row(children: [
                    const Expanded(
                      child: Image(
                          image: AssetImage(
                              "assets/img_8.png")),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(child:  Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
                      const SizedBox(
                        height: 15,
                      ),
                      const Text(
                        "2 days ago",
                        style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400,color: Colors.green),
                        maxLines: 3,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      TextButton(onPressed: (){navigateto(context, BlogInfo());},child:const Text("5 Tips to treate plants",
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                              color: Colors.black
                          )),),
                      const SizedBox(height: 20,),
                      const Text("leaf, in botany, any usually",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,color: Colors.grey
                          )),
                      const SizedBox(height: 10,),
                      const Text("leaf, in botany, any usually",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,color: Colors.grey
                          )),



                    ])
                    )])
                  ,
                ),
                const SizedBox(height: 15,),
                Container(
                  width: 376,
                  height: 161,

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  child: Row(children: [
                    const Expanded(
                      child: Image(
                          image: AssetImage(
                              "assets/img_7.png")),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(child:  Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
                      const SizedBox(
                        height: 15,
                      ),
                      const Text(
                        "2 days ago",
                        style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400,color: Colors.green),
                        maxLines: 3,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      TextButton(onPressed: (){BlogInfo();},child:const Text("5 Tips to treate plants",
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                              color: Colors.black
                          )),),
                      const SizedBox(height: 20,),
                      const Text("leaf, in botany, any usually",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,color: Colors.grey
                          )),
                      const SizedBox(height: 10,),
                      const Text("leaf, in botany, any usually",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,color: Colors.grey
                          )),



                    ])
                    )])
                  ,
                ),
                const SizedBox(height: 15,), Container(
                  width: 376,
                  height: 161,

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  child: Row(children: [
                    const Expanded(
                      child: Image(
                          image: AssetImage(
                              "assets/img_9.png")),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(child:  Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
                      const SizedBox(
                        height: 15,
                      ),
                      const Text(
                        "2 days ago",
                        style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400,color: Colors.green),
                        maxLines: 3,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      TextButton(onPressed: (){BlogInfo();},child:const Text("5 Tips to treate plants",
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                              color: Colors.black
                          )),),
                      const SizedBox(height: 20,),
                      const Text("leaf, in botany, any usually",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,color: Colors.grey
                          )),
                      const SizedBox(height: 10,),
                      const Text("leaf, in botany, any usually",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,color: Colors.grey
                          )),



                    ])
                    )])
                  ,
                ),
                 ]),

      ]  )));

  }

}
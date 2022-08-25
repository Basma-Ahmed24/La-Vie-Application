import 'package:flutter/material.dart';

class NotificationsScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(body: Padding(padding: const EdgeInsets.all(10),child:
    ListView(
        children:[ Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [Row(children:[ SizedBox(width: MediaQuery.of(context).size.width/3,),
      const Text("Notifications",style: TextStyle(fontSize: 19,fontWeight: FontWeight.w500),)],
    )
    ,const SizedBox(height: 40,)

,Row(children: [const SizedBox(width: 35,height: 35,child: CircleAvatar(
            radius: 50,
            backgroundImage:AssetImage('assets/img_10.png'),
          )),const SizedBox(width: 15,), Column(crossAxisAlignment: CrossAxisAlignment.start,children: const [Text("Joy Arnold left 6 comments on your post",style: TextStyle(
            fontSize: 14,fontWeight: FontWeight.w500
          ),),SizedBox(height: 5,),Text("Yesterday at 11:42 PM ",style: TextStyle(
              fontSize: 14,fontWeight: FontWeight.w400,color: Colors.grey
          ),)],)

         , ],),const SizedBox(height: 20,),Container(height: 1,width: MediaQuery.of(context).size.width,color: Colors.black12,)
    ,const SizedBox(height: 15,),
    Row(children: [const SizedBox(width: 35,height: 35,child: CircleAvatar(
    radius: 50,
    backgroundImage:AssetImage('assets/img_11.png'),
    )),const SizedBox(width: 15,),
      Column(crossAxisAlignment: CrossAxisAlignment.start,children: const [Text("Dennis Nedry commented on Isla Nublar SOC2",maxLines: 2,style: TextStyle(
    fontSize: 14,fontWeight: FontWeight.w500
    ),),Text("compilance report",maxLines: 2,style: TextStyle(
        fontSize: 14,fontWeight: FontWeight.w500
    ),),SizedBox(height: 15,),Text("“ leaves are an integral part of the stem system.They",maxLines: 4,style: TextStyle(
        fontSize: 14,fontWeight: FontWeight.w500
    ),),SizedBox(height: 5,),Text(" are attached by a continuous vascular system to the",maxLines: 4,style: TextStyle(
        fontSize: 14,fontWeight: FontWeight.w500
    ),),SizedBox(height: 5,),Text(" rest of the plant so that free exchange of nutrients.”",maxLines: 4,style: TextStyle(
    fontSize: 14,fontWeight: FontWeight.w500
    ),),SizedBox(height: 10,)
    ,Text("Yesterday at 11:42 PM ",style: TextStyle(
    fontSize: 14,fontWeight: FontWeight.w400,color: Colors.grey
    ),)],)

    , ],),const SizedBox(height: 20,),Container(height: 1,width: MediaQuery.of(context).size.width,color: Colors.black12,)
    ,]),const SizedBox(height: 10,),Row(children: [const SizedBox(width: 35,height: 35,child: CircleAvatar(
          radius: 50,
          backgroundImage:AssetImage('assets/img_10.png'),
        )),const SizedBox(width: 15,), Column(crossAxisAlignment: CrossAxisAlignment.start,children: const [Text("Joy Arnold left 6 comments on your post",style: TextStyle(
            fontSize: 14,fontWeight: FontWeight.w500
        ),),SizedBox(height: 5,),Text("Yesterday at 11:42 PM ",style: TextStyle(
            fontSize: 14,fontWeight: FontWeight.w400,color: Colors.grey
        ),)],)

          , ],)])));
  }

}

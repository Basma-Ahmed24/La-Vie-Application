import 'package:flutter/material.dart';

class BlogInfo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      body:Column(children: [
      Container(
      margin: const EdgeInsets.fromLTRB(0, 0, 0, 1),
      height: 280,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(

          //set border radius to 50% of square height and width
          image: DecorationImage(
            image: AssetImage("assets/img_7.png"),
            fit: BoxFit.cover,
          )),
    ),
    const SizedBox(

    height: 5,
    ),
    Column(crossAxisAlignment :CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start ,children: const [
    SizedBox( height: 10),
      Text("5 Simple Tips to treate plants",
          style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.w600,
              color: Colors.black
          ),),   SizedBox(height: 20,),
      Text("leaf, in botany, any usually flattened green",
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,color: Colors.grey
          )),
      SizedBox(height: 10,),
      Text("outgrowth from the stem of",
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,color: Colors.grey
          )),  SizedBox(height: 20,),
      Text("leaf, in botany, any usually flattened green",
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,color: Colors.grey
          )),
      SizedBox(height: 10,),
      Text("outgrowth from the stem of",
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,color: Colors.grey
          )), SizedBox(height: 20,),
      Text("leaf, in botany, any usually flattened green",
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,color: Colors.grey
          )),
      SizedBox(height: 10,),
      Text("outgrowth from the stem of",
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,color: Colors.grey
          )), SizedBox(height: 20,),
      Text("leaf, in botany, any usually flattened green",
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,color: Colors.grey
          )),
      SizedBox(height: 10,),
      Text("outgrowth from the stem of",
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,color: Colors.grey
          )), SizedBox(height: 20,),
      Text("leaf, in botany, any usually flattened green",
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,color: Colors.grey
          )),
      SizedBox(height: 10,),
      Text("outgrowth from the stem of",
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,color: Colors.grey
          )), SizedBox(height: 20,),
      Text("leaf, in botany, any usually flattened green",
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,color: Colors.grey
          )),
      SizedBox(height: 10,),
      Text("outgrowth from the stem of",
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,color: Colors.grey
          )), SizedBox(height: 20,),
      Text("leaf, in botany, any usually flattened green",
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,color: Colors.grey
          )),
      SizedBox(height: 10,),
      Text("outgrowth from the stem of",
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,color: Colors.grey
          ))])]));
  }

}
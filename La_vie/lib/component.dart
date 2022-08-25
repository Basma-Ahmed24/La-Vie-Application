import 'package:flutter/material.dart';
import 'package:la_vie/Screens/blog_info.dart';

String baseurl = "https://lavie.orangedigitalcenteregypt.com";
List<dynamic> mychart = [];


void deleteproduct(cart) {
  mychart.remove(mychart);
  print(mychart);
}

void navigateto(context, widget) => Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => widget,
    ));
Widget ProductsBulder(All, context) => Container(
      child: GridView.count(
          mainAxisSpacing: 10,
          childAspectRatio: 1 /1.7,
          crossAxisSpacing: 10,
          shrinkWrap: true,
          crossAxisCount: 2,
          children: List.generate(
            All.length,
            (index) => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image(
                  image: NetworkImage(
                      "https://lavie.orangedigitalcenteregypt.com${All[index]["imageUrl"]}",),
                  width: double.nan,
                  height: 180,
                  fit: BoxFit.cover,

                ),const SizedBox(height: 10,),
                Text(
                  "${All[index]["name"]}",style: const TextStyle(fontSize: 17,fontWeight: FontWeight.w600),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),const SizedBox(height: 5,),
                Text(
                  "${All[index]["price"]} EGP",style: const TextStyle(fontSize: 17,fontWeight: FontWeight.w600),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.start,
                ),
                ElevatedButton(
                  onPressed: () {
                    mychart.add(All[index]);
                    print(mychart);
                  },
                  style: ButtonStyle(
                      fixedSize: MaterialStateProperty.all(const Size(150, 30.24)),
                      backgroundColor: MaterialStateProperty.all(Colors.green)),

                  child: Row(children: const [
                    SizedBox(width: 14),
                    Text(
                      "Add To Cart",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    )
                  ]),
                ),
              ],
            ),
          )),
    );

Widget CategoriesBulder(All, context) => Container(
      child: GridView.count(
          mainAxisSpacing: 10,
          childAspectRatio: 1 / 1.6,
          crossAxisSpacing: 10,
          shrinkWrap: true,
          crossAxisCount: 2,
          children: List.generate(
            All.length,
            (index) => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image(
                  image: NetworkImage(
                      "https://lavie.orangedigitalcenteregypt.com${All[index]["imageUrl"]}"),
                  width: double.nan,
                  height: 200,
                  fit: BoxFit.cover,
                ),
                Text(
                  "${All[index]["name"]}",style: const TextStyle(fontSize: 17,fontWeight: FontWeight.w600),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  "${All[index]["description"]}",style: const TextStyle(fontSize: 17,fontWeight: FontWeight.w600)
                 , maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.start,
                ),
                ElevatedButton(
                  onPressed: () {  mychart.add(All[index]);},
                  style: ButtonStyle(
                      fixedSize: MaterialStateProperty.all(const Size(150, 30.24)),
                      backgroundColor: MaterialStateProperty.all(Colors.green)),
                  child: Row(children: const [
                    SizedBox(width: 14),
                    Text(
                      "Add To Cart",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    )
                  ]),
                ),
              ],
            ),
          )),
    );
var counter = 1;

Widget dividor(context) => Container(
      width: MediaQuery.of(context).size.width,
      height: 20,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.black12,
      ),
      child: const Text(""),
    );

Widget buildblogs() => Column(

    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Container(
        width: 400,
        height: 170,

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
    ]);
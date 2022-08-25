import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:la_vie/component.dart';



class ChartScreen extends StatefulWidget{
  @override
  State<ChartScreen> createState() => _ChartScreenState();
}

class _ChartScreenState extends State<ChartScreen> {
  @override
  bool isEmpty(){
    if( mychart.isEmpty) {
      return true;
    } else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {

   return  Scaffold(backgroundColor: Colors.white,
    body:Padding(padding: const EdgeInsets.all(15),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [const SizedBox(height: 40,),Row(children:[ SizedBox(width: MediaQuery.of(context).size.width/2.8,),const Text("My cart",style: TextStyle(fontSize:24,fontWeight: FontWeight.w600 ),)],
    ),const SizedBox(height:0,),
    ConditionalBuilder(
    condition: isEmpty()==false,
       builder: (context) => Expanded(
         child: ListView.separated(
    itemBuilder: (context, index) =>
        Column(

            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 350,
                height: 170,

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Row(children: [
                  Expanded(
                    child: Image(
                        image: NetworkImage(
                            "https://lavie.orangedigitalcenteregypt.com${mychart[index]["imageUrl"]}")),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(child:  Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      "${mychart[index]["name"]}",
                      style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                      maxLines: 3,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text("${mychart[index]["price"]} EGP",
                        style: const TextStyle(
                            fontSize: 15.23,
                            fontWeight: FontWeight.w600,
                            color: Colors.green)),

                    const SizedBox(
                      height: 25,
                    ),
                    Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                      Container(
                        width: 70,
                        height: 35.77,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black12,
                        ),
                        child: const Padding(padding:EdgeInsets.all(10),child: Text("-   1   +",style: TextStyle(color: Colors.green,),textAlign: TextAlign.center,)),
                      ),
                      const SizedBox(width: 50),
                      IconButton(
                        onPressed: () {setState(() {
                          mychart.remove(mychart[index]);


                          print(mychart);

                        });


                        },
                        icon: const Icon(
                          Icons.delete,
                          color: Colors.green,size: 30,
                        ),
                        alignment: Alignment.bottomRight,
                      )
                    ]),

                  ])
                  )])
                ,
              ),
            ]),

    itemCount: mychart.length, separatorBuilder: (BuildContext context, int index)=> dividor(context)
    ),
       ),
    fallback: (context) =>
        Column(children: const [


          SizedBox(width: 250,height:370 ,child: Image(image:AssetImage('assets/img_6.png'))),Text("Your cart is empty",
          style: TextStyle(fontSize:24,fontWeight: FontWeight.bold ),textAlign: TextAlign.center,),SizedBox(height: 10,),
          Text("Sorry, the keyword you entered cannot be found, please check again or search with anothor keyword ",
          maxLines: 3,style: TextStyle(fontSize: 18,color: Colors.grey),textAlign: TextAlign.center,)],)),
    isEmpty()==false ?Column(
      children:[const SizedBox(height: 10,),Row(children: const [
        Text("Total",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 22),)
,SizedBox(width:40 ,),SizedBox(width: 190,),Text("2750 EGP",style: TextStyle(fontSize: 22,color: Colors.green,fontWeight: FontWeight.w600),textAlign: TextAlign.end,),   ],),const SizedBox(height: 20,), ElevatedButton(
        onPressed: () {

        },
        style: ButtonStyle(
          fixedSize: MaterialStateProperty.all(const Size(
              377, 46.24)),
          backgroundColor: MaterialStateProperty.all(
              Colors.green),),
        child: Row(children: const [
          SizedBox(
            width: 150,
          ),
          Text("Checkout ",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ))
        ]),

      ),
    ]):const Text("")  ]),

    )
    );
     }
}
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:la_vie/Screens/edit_email.dart';
import 'package:la_vie/Screens/edit_name.dart';
import 'package:la_vie/component.dart';

import '../bloc_app/app_cubit.dart';
import '../bloc_app/app_states.dart';

class ProfileScreen extends StatelessWidget{
  @override
  var list1;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BlocProvider(create: (BuildContext context)=>AppCubit()..getProfileData(),
        child:BlocConsumer<AppCubit,AppStates>(listener: (context,state){
    }, builder: (context,state) {
  list1  = AppCubit.get(context).profile;


    return Scaffold(backgroundColor: Colors.black,
   body: Column(children: [
   Container(
   margin: const EdgeInsets.fromLTRB(0, 0, 0, 1),
      height: 300,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
borderRadius: BorderRadius.circular(20),
        //set border radius to 50% of square height and width
          image: const DecorationImage(
            image: AssetImage("assets/dark-sunset-1.jpg"),
            fit: BoxFit.cover,
          )),child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [const SizedBox(height: 40,width: 20,)
           , const Icon(Icons.west,color: Colors.white,size: 30,),const SizedBox(height: 30,),const Center(child: SizedBox(height: 148,width: 148,child: Image(image:AssetImage("assets/img_12.png")),
     )),const SizedBox(height: 10,),Center(child: Text("${list1["firstName"]} ${list1["lastName"]}",style: const TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.w700),))
   ],),
    ),Container(width:MediaQuery.of(context).size.width,height: 455,  decoration: BoxDecoration(
       borderRadius: BorderRadius.circular(20),color: Colors.white
     ),child: Column(crossAxisAlignment: CrossAxisAlignment.center,
       children: [const SizedBox(height: 30,),Container(width: 378,height: 80,color: const Color.fromRGBO(215, 245, 191, 0.8)
       ,child: Row(children: const [SizedBox(width: 10,),Image(image: (AssetImage("assets/img_13.png")),width: 38,height: 38,),SizedBox(width: 10,),Text("You have 30 points",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),),],),),const SizedBox(height: 20,),const SizedBox(height: 30,width: 350,child: Text("Edit Profile",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18)))
      , Container(width: 378,height: 84,decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(10),
color: Colors.white,
         border: Border.all(
       color: Colors.black12, //color of border
         width: 2, //width of border
       ),
         ),child: Row(children: [const SizedBox(width:
           10,),
           Container(width:30,height: 30 ,color: Colors.teal,child: const Icon(Icons.switch_left,color: Colors.white,),),const SizedBox(width: 10,),const Text("Change Name",style: TextStyle(fontSize: 17.88,fontWeight: FontWeight.w600),),const SizedBox(width: 150,),IconButton(onPressed: (){navigateto(context, EditName());}, icon:const Icon(Icons.east_outlined,size: 35,color: Colors.black45,))
         ],),),const SizedBox(height: 20,),Container(width: 378,height: 84,decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(10),
           color: Colors.white,
           border: Border.all(
             color: Colors.black12, //color of border
             width: 2, //width of border
           ),
         ),child: Row(children: [const SizedBox(width:
         10,),
           Container(width:30,height: 30 ,color: Colors.teal,child: const Icon(Icons.switch_left,color: Colors.white,),),const SizedBox(width: 10,),const Text("Change Email",style: TextStyle(fontSize: 17.88,fontWeight: FontWeight.w600),),const SizedBox(width: 150,),IconButton(onPressed: (){navigateto(context, EditEmail());}, icon:const Icon(Icons.east_outlined,size: 35,color: Colors.black45,))
         ],),)],
     ),
          ),]));
    })); }

}

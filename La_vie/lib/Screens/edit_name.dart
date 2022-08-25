import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:la_vie/Screens/profile.dart';
import 'package:la_vie/component.dart';

import '../bloc_app/app_cubit.dart';
import '../bloc_app/app_states.dart';

class EditName extends StatelessWidget{
  var firstnamecontroller=TextEditingController();
  var lastnamecontroller=TextEditingController();
  var formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BlocProvider(create: (BuildContext context)=>AppCubit()..getProfileData()..updateUser(),
        child:BlocConsumer<AppCubit,AppStates>(listener: (context,state){
    }, builder: (context,state) {
          var list = AppCubit.get(context).profile;
          if(state is ProfileSucessState){
          firstnamecontroller.text = list["firstName"];
          lastnamecontroller.text=list["lastName"];
print(list["firstName"]);
list=AppCubit().newprofile;
         // ProfileScreen().list1=list;
          }
          return Scaffold(
            body: Form(key: formkey,
              child: Padding(padding: const EdgeInsets.all(20), child:
              Column(children: [
                const SizedBox(height: 30,),
                Row(children: [
                  IconButton(onPressed: () {
                    navigateto(context, ProfileScreen());
                  }, icon: const Icon(Icons.west, size: 35,)),
                  SizedBox(width: MediaQuery
                      .of(context)
                      .size
                      .width / 3.8,)
                  ,
                  const Text("Edit Name",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),),
                ]),
                const SizedBox(height: 40,),
                const Text("First Name",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600,color: Colors.grey)),
                TextFormField(
                  keyboardType: TextInputType.name,
                  controller: firstnamecontroller,

                  validator: (value) {
                    if (value!.isEmpty) {
                      return "First name must not be empty";
                    }
                    return null;
                  },
                  onFieldSubmitted: (String value) {
                    print(value);
                  },
                  style: const TextStyle(fontSize: 20,fontWeight: FontWeight.w600),
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintStyle: TextStyle(fontSize: 18,fontWeight: FontWeight.w600)

                  ),
                ),const SizedBox(height: 20,),
           const Text("Last Name",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600,color: Colors.grey)),
          TextFormField(
          keyboardType: TextInputType.name,
          controller: lastnamecontroller,

          validator: (value) {
          if (value!.isEmpty) {
          return "Last name must not be empty";
          }
          return null;
          },
          onFieldSubmitted: (String value) {
          print(value);
          },
          style: const TextStyle(fontSize: 20,fontWeight: FontWeight.w600),
          decoration: const InputDecoration(
          border: OutlineInputBorder(),
          hintStyle: TextStyle(fontSize: 18,fontWeight: FontWeight.w600)

          ),
          ), const SizedBox(height: 30,),
                ElevatedButton(
                  onPressed: () { if (formkey.currentState!.validate()){
                    AppCubit.get(context).updateUser(
                     Firstname:firstnamecontroller.text
                       ,Lastname:lastnamecontroller.text,email: list["email"]
                   );}
                    },
                  style: ButtonStyle(
                      fixedSize: MaterialStateProperty.all(const Size(377, 46.24)),
                      backgroundColor: MaterialStateProperty.all(Colors.green)),
                  child: Row(children: const [
                    SizedBox(
                      width: 150,
                    ),
                    Text("Update",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ))
                  ]),
                ),const SizedBox(height: 30,),
                ElevatedButton(
                  onPressed: () {
                    if (formkey.currentState!.validate()) {

                    }
                    else{
                      return;
                    }

                  },
                  style: ButtonStyle(
                      fixedSize: MaterialStateProperty.all(const Size(377, 46.24)),
                      backgroundColor: MaterialStateProperty.all(Colors.green)),
                  child: Row(children: const [
                    SizedBox(
                      width: 150,
                    ),
                    Text("Logout",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ))
                  ]),
                )],),),
            ),
          );
        })); }

}
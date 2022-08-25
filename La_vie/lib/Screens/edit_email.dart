import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:la_vie/Screens/profile.dart';
import 'package:la_vie/Screens/spalsh_screen.dart';
import 'package:la_vie/component.dart';
import 'package:la_vie/login/login_cubit.dart';
import 'package:la_vie/login/login_screen.dart';

import '../bloc_app/app_cubit.dart';
import '../bloc_app/app_states.dart';

class EditEmail extends StatelessWidget{

  var emailcontroller=TextEditingController();
  var formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BlocProvider(create: (BuildContext context)=>AppCubit()..getProfileData()..updateUser(),
        child:BlocConsumer<AppCubit,AppStates>(listener: (context,state){
        }, builder: (context,state) {
          var list = AppCubit.get(context).profile;
          if(state is ProfileSucessState){

            emailcontroller.text=list["email"];
            print(list["email"]);
            list=AppCubit().newprofile;
           LoginCubit().map=list;
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
                  const Text("Edit Email",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),),
                ]),
                const SizedBox(height: 40,),
                const Text("Email",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600,color: Colors.grey)),
                TextFormField(
                  controller: emailcontroller,
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "email address must not be empty";
                    }
                    if (!value.contains("@gmail.com") ||
                        value.contains("@Gmail.com")) {
                      return "yor email must be contains @gmail.com";
                    }
                    return null;
                  },
                  onFieldSubmitted: (String value) {
                    print(value);
                  },
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.symmetric(vertical: 4)),
                ),const SizedBox(height: 20,),
               const SizedBox(height: 30,),
                ElevatedButton(
                  onPressed: () { if (formkey.currentState!.validate()){
                    AppCubit.get(context).updateUser(
                        Firstname:list["firstName"]
                        ,Lastname:list["lastName"],email: emailcontroller.text
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
navigateto(context, LoginScreen());
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
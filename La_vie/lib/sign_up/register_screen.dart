import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:la_vie/sign_up/sign_up_cubit.dart';
import 'package:la_vie/sign_up/sign_up_state.dart';

import '../component.dart';
import '../login/login_screen.dart';

class Register extends StatelessWidget {
  var emailcontroller = TextEditingController();
  var firstnamecontroller=TextEditingController();
  var lastnamecontroller=TextEditingController();
  var passwordcontroller = TextEditingController();
  var confiempasswordcontroller = TextEditingController();
  var formkey = GlobalKey<FormState>();

  final bool _showPassword = true;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BlocProvider(create: (BuildContext context)=>SignUpCubit(),
        child:BlocConsumer<SignUpCubit,SignUpStates>(listener: (context,state){
      if (state is SignUpSucessState){
if(state.model?.message=="User created successfully") {
  Fluttertoast.showToast(msg: "Signed Up Successfully",
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 5,
      backgroundColor: Colors.green,
      textColor: Colors.white
      ,
      fontSize: 16);
  navigateto(context, LoginScreen());
}
        }
      else if(state is SignUpErorrState) {
        print("Signed Up Failed");
        Fluttertoast.showToast(
            msg: "Signed Up Failed",
            toastLength: Toast.LENGTH_LONG,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 5,
            backgroundColor: Colors.red,
            textColor: Colors.white
            ,
            fontSize: 16);
      }
      //   print("Logged in Failed,your email or password may be wrong");

    },
    builder: (context,state) {
    return
    Scaffold(

    body:
    Form(key: formkey,
    child: ListView(
    // mainAxisAlignment: MainAxisAlignment.start,
    // crossAxisAlignment: CrossAxisAlignment.start,
    children: [

    Container(
    height: MediaQuery.of(context).size.height /5.5,
    alignment: Alignment.topRight,
    width: MediaQuery.of(context).size.width,
    child: Image.asset("assets/img_1.png"),
    ),


    SizedBox(
    height: 45,
    width: 45,
    child: Image.asset("assets/img.png"),

    ),


    Padding(
    padding: const EdgeInsets.only(top:30),
    child: Row(
    crossAxisAlignment:CrossAxisAlignment.start ,
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [Column(
    children:[ Padding(
    padding: const EdgeInsets.only(bottom: 8),
    child: GestureDetector(
    child: const Text("Sign up",style: TextStyle(color:// Color(0xff8A8A8A)
    Color(0xff1ABC00) ,fontSize: 18,fontWeight: FontWeight.w500)),
    onTap: (){
    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Register()));
    },
    ),),
    Container(

    width: 50,
    height: 2,
    color:const Color(0xff1ABC00) ,
    ),]),
    Column(
    children: [
    Padding(
    padding: const EdgeInsets.only(bottom: 8),
    child: GestureDetector(
    child: const Text("Login",style: TextStyle(color:Color(0xff8A8A8A),fontSize: 18,fontWeight: FontWeight.w500)),
    onTap: (){
    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LoginScreen()));
    },
    ),
    ),

    ],
    ),

    ],
    ),
    ),
    const SizedBox(

    width: 70,
    ),
    Padding(
    padding: const EdgeInsets.symmetric(horizontal: 30,vertical:8 ),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: const [
    Text("First Name",style: TextStyle(color: Color(0xff8A8A8A), fontWeight: FontWeight.w500),),
    ],
    ),
    ),
    Padding(
    padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 0),
    child: TextFormField(
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
    decoration: const InputDecoration(
    border: OutlineInputBorder(),
    contentPadding: EdgeInsets.symmetric(vertical: 4)),style: const TextStyle(fontSize: 17,fontWeight: FontWeight.w500)
    ),),
    const SizedBox(
    height: 10,
    ), const Padding(
    padding: EdgeInsets.only(left:30, bottom: 2),child:
    Text(
    "Last Name",
    style: TextStyle(
    color: Colors.black54,
    fontWeight: FontWeight.w500,
    ),)),
    const SizedBox(
    height: 5,
    ),
    Padding(
    padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 0),child:
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
    decoration: const InputDecoration(
    border: OutlineInputBorder(),
    contentPadding: EdgeInsets.symmetric(vertical: 4)),style: const TextStyle(fontSize: 17,fontWeight: FontWeight.w500)
    ),)
    ,const SizedBox(height: 10,),
    Padding(
    padding: const EdgeInsets.only(left:30, bottom: 2),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: const [
    Text("Email",style: TextStyle(color: Color(0xff8A8A8A),fontWeight: FontWeight.w500),),
    ],
    ),
    ),
    Padding(
    padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 0),
    child: TextFormField(
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
    contentPadding: EdgeInsets.symmetric(vertical: 4)),style: const TextStyle(fontSize: 17,fontWeight: FontWeight.w500)
    ),
    ),
    const SizedBox(
    height: 10,
    ),
    Padding(
    padding: const EdgeInsets.only(left:30, bottom: 0),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: const [
    Text("Password",style: TextStyle(color: Color(0xff8A8A8A),fontWeight: FontWeight.w500)),
    ],
    ),
    ),
    Padding(
    padding: const EdgeInsets.symmetric(horizontal: 30),
    child: TextFormField(
    controller: passwordcontroller,
    keyboardType: TextInputType.visiblePassword,
    validator: (value) {
    if (value!.isEmpty) {
    return "password address must not be empty";
    }
    if (value.length < 8) {
    return "your password is short,you must input more than 8 characters ";
    }
    return null;
    },
    onFieldSubmitted: (String value) {
    print(value);
    },
    obscureText: _showPassword,
    decoration: const InputDecoration(
    border: OutlineInputBorder(),
    contentPadding: EdgeInsets.symmetric(vertical: 4)),style: const TextStyle(fontSize: 17,fontWeight: FontWeight.w500)
    ),
    ),
    const SizedBox(
    height: 10,
    ),
    Padding(
    padding: const EdgeInsets.only(left:30, bottom: 0),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: const [
    Text(" Confiem Password",style: TextStyle(color: Color(0xff8A8A8A),fontWeight: FontWeight.w500),),
    ],
    ),
    ),
    const SizedBox(
    height: 5,
    ), Padding(
    padding: const EdgeInsets.symmetric(horizontal: 30),
    child: TextFormField(
    controller: confiempasswordcontroller,
    keyboardType: TextInputType.visiblePassword,
    validator: (value) {
    if (value!.isEmpty) {
    return "password address must not be empty";
    }

    if (value != passwordcontroller.text) {
    return "Not match with your password ";
    }
    return null;
    },
    onFieldSubmitted: (String value) {
    print(value);
    },
    obscureText: _showPassword,
    decoration: const InputDecoration(
    border: OutlineInputBorder(),
    contentPadding: EdgeInsets.symmetric(vertical: 3)),
    ),),
    const SizedBox(
    height: 10,
    ), Padding(padding: const EdgeInsets.all(27),child:ConditionalBuilder(
      condition:
      state is !SignUpLoadingState,
      fallback: (context)=>const Center(child: CircularProgressIndicator(color: Colors.green,),),
      builder:(context)=>
    ElevatedButton(
    onPressed: () {
    if (formkey.currentState!.validate()) {


      SignUpCubit.get(context).userSignUp(email:emailcontroller.text, password: passwordcontroller.text,fname:firstnamecontroller.text,lname: lastnamecontroller.text );
      }

    },
    style: ButtonStyle(
    fixedSize: MaterialStateProperty.all(const Size(377, 46.24)),
    backgroundColor: MaterialStateProperty.all(Colors.green)),
    child: Row(children: const [
    SizedBox(
    width: 150,
    ),
    Text("Login",
    style: TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    ))
    ]),
    ),),),
    const SizedBox(height: 5),
    Row(
    children: const [

    Expanded(
    child: Divider(
    thickness: 2,
    endIndent: 10,
    ),
    ),
    Text(
    "or continue with",
    style: TextStyle(fontSize: 13, color: Colors.black45),
    ),
    Expanded(
    child: Divider(
    thickness: 2,
    endIndent: 10,
    ))
    ],
    ),
    const SizedBox(
    height: 30,
    ),
    Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    const SizedBox(
    width: 20,
    ),
    SizedBox(
    width: 24,
    height: 24,
    child: InkWell(
    onTap: () {},
    child: Image.asset("assets/img_3.png"),
    )),
    const SizedBox(
    width: 30,
    ),
    SizedBox(
    width: 24,
    height: 24,
    child: InkWell(
    onTap: () {}, child: Image.asset("assets/img_4.png")))
    ],
    ), Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: const [
    SizedBox(width: 160,height: 150,child: Image(image: AssetImage("assets/img_2.png"))),
    ],
    ),
      ])),

    );
    }
    ));}
}

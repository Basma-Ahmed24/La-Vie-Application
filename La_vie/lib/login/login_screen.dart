
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:la_vie/Screens/navigation_bar.dart';
import 'package:la_vie/sharedpreferences.dart';
import 'package:la_vie/sign_up/register_screen.dart';
import 'package:la_vie/login/login_cubit.dart';
import 'package:la_vie/login/state.dart';

import '../component.dart';
class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  bool showpassword=true;
  var emailcontroller = TextEditingController();
  var passwordcontroller = TextEditingController();
  var formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {

    return BlocProvider(create: (BuildContext context)=>LoginCubit(),
      child:BlocConsumer<LoginCubit,LoginStates>(listener: (context,state){
        if (state is LoginSucessState){
          if (state.model?.message=="Logged in Successfully"){
            print(state.model?.message);
            CacheHelper.savedata(key: 'token', value: state.model?.data?.token);
            Fluttertoast.showToast(msg:"Logged in Successfully" ,
                toastLength:Toast.LENGTH_LONG,
                gravity: ToastGravity.BOTTOM,timeInSecForIosWeb: 5,
                backgroundColor: Colors.green,textColor: Colors.white
                ,fontSize: 16);
            navigateto(context, MyNavigationBar());

          }}
         else if(state is LoginErorrState) {
            print("Logged in Failed,your email or password may be wrong");
            Fluttertoast.showToast(
                msg: "Logged in Failed, your email or password may be wrong",
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
            return Scaffold(

              body:
              Form(key: formkey,
                  child: ListView(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Container(
                          height: MediaQuery
                              .of(context)
                              .size
                              .height / 5,
                          alignment: Alignment.topRight,
                          width: MediaQuery
                              .of(context)
                              .size
                              .width,
                          child: Image.asset("assets/img_1.png"),
                        ),

                        Center(
                          child: SizedBox(
                            height: 100,
                            width: 100,
                            child: Image.asset("assets/img.png"),

                          ),
                        ),


                        Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              GestureDetector(
                                child: const Text("Sign up", style: TextStyle(
                                    color: Color(0xff8A8A8A),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500)),
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => Register()));
                                },
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 8),
                                    child: GestureDetector(
                                      child: const Text("Login", style: TextStyle(
                                          color: Color(0xff1ABC00),
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500)),
                                      onTap: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    LoginScreen()));
                                      },
                                    ),
                                  ),
                                  Container(

                                    width: 50,
                                    height: 2,
                                    color: const Color(0xff1ABC00),
                                  )
                                ],
                              ),

                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                          width: 70,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30, bottom: 2),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Text("Email", style: TextStyle(
                                  color: Color(0xff8A8A8A)),),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 30, vertical: 0),
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
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 4)),style: const TextStyle(fontSize: 17,fontWeight: FontWeight.w500),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                          width: 70,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30, bottom: 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Text("Password", style: TextStyle(
                                  color: Color(0xff8A8A8A)),),
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
                            obscureText: showpassword,
                            decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 4)),style: const TextStyle(fontSize: 17,fontWeight: FontWeight.w500)
                          ),
                        ),
                        const SizedBox(

                          width: 70,
                        ),
                        Padding(padding: const EdgeInsets.all(23),
                          child:ConditionalBuilder(
                            condition:
                             state is !LoginLoadingState,
                            fallback: (context)=>const Center(child: CircularProgressIndicator(color: Colors.green,),),
                            builder:(context)=>ElevatedButton(
                            onPressed: () {
                              if (formkey.currentState!.validate()) {
                               LoginCubit.get(context).userLogin(email:emailcontroller.text, password: passwordcontroller.text);
                              }
                            },
                            style: ButtonStyle(
                                fixedSize: MaterialStateProperty.all(const Size(
                                    377, 46.24)),
                                backgroundColor: MaterialStateProperty.all(
                                    Colors.green)),
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
                          ),
                        ),),
                        const SizedBox(
                          height: 10,
                          width: 70,
                        ),

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
                                    onTap: () {}, child: Image.asset(
                                    "assets/img_4.png")))
                          ],
                        ), Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            SizedBox(width: 160,
                                height: 150,
                                child: Image(image: AssetImage(
                                    "assets/img_2.png"))),
                          ],
                        ),
                  ])),

            );

          }));
  }
}

import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:la_vie/component.dart';

import '../../bloc_app/app_cubit.dart';
import '../../bloc_app/app_states.dart';

class AllCategories extends StatelessWidget{
 

  @override

  Widget build(BuildContext context) {
    // TODO: implement build
  return BlocProvider(create: (BuildContext context)=>AppCubit()..getHomeData(),
      child:BlocConsumer<AppCubit,AppStates>(listener: (context,state){const Scaffold();
  }, builder: (context,state) {
      var list = AppCubit.get(context).All;


        return ConditionalBuilder(
        condition:  state is! AppLoadingState
       
        ,builder:(context)=>ProductsBulder(list,context)
        , fallback: ( context)=>const Center(child:CircularProgressIndicator(color: Colors.green,)) ,);}));}

}
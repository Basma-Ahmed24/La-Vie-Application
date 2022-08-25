import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc_app/app_cubit.dart';
import '../../bloc_app/app_states.dart';
import '../../component.dart';

class Seeds extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BlocProvider(create: (BuildContext context)=>AppCubit()..getSeedsData(),
        child:BlocConsumer<AppCubit,AppStates>(listener: (context,state){const Scaffold();
        }, builder: (context,state) {
          var list = AppCubit.get(context).seeds;


          return ConditionalBuilder(
            condition:  state is! SeedsLoadingState

            ,builder:(context)=>CategoriesBulder(list,context)
            , fallback: ( context)=>const Center(child:CircularProgressIndicator(color: Colors.green,)) ,);}));}

}
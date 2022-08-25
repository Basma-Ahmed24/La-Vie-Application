import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc_app/plants_cubit.dart';
import '../../bloc_app/plants_states.dart';
import '../../component.dart';

class Plants extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  BlocProvider(create: (BuildContext context)=>PlantsCubit()..getHomeData(),
        child:BlocConsumer<PlantsCubit,PlantsStates>(listener: (context,state){const Scaffold();
        }, builder: (context,state) {
          var list = PlantsCubit.get(context).plants;


          return ConditionalBuilder(
            condition:  state is! PlantsLoadingState

            ,builder:(context)=>CategoriesBulder(list,context)
            , fallback: ( context)=>const Center(child:CircularProgressIndicator(color: Colors.green,)) ,);}));}

}
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:la_vie/Home/home_model.dart';
import 'package:la_vie/bloc_app/plants_states.dart';
import 'package:la_vie/sharedpreferences.dart';
import 'package:la_vie/dio_healper.dart';

class PlantsCubit extends Cubit<PlantsStates> {
  PlantsCubit() : super(PlantsInitialState());

  static PlantsCubit get(context) => BlocProvider.of(context);
  int currentIndex = 0;
  HomeModel? homeModel;
  List<dynamic> plants = [];

  void getHomeData() {
    emit(PlantsLoadingState());
    DioHelper.getData(
      endpoint: "/api/v1/plants",

      token: CacheHelper.getData(key: "apiToken"),
    ).then((value) async {
      // All = value.data['message'];

      plants=value.data['data'];

      emit(PlantsSucessState());
    }).catchError((erorr) {
      emit(PlantsErorrState(erorr.toString()));
      print(erorr.toString());
    });
  }
}

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:la_vie/Home/home_model.dart';
import 'package:la_vie/bloc_app/app_states.dart';
import 'package:la_vie/sharedpreferences.dart';
import 'package:la_vie/dio_healper.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitialState());

  static AppCubit get(context) => BlocProvider.of(context);
  int currentIndex = 0;
  HomeModel? homeModel;
  List<dynamic> All = [];
  List<dynamic> seeds = [];
  List<dynamic> tools = [];
 Map<String,dynamic> newprofile= {};
  Map<String,dynamic> profile= {};
  List<dynamic>plants=[];
  List<dynamic>Mychart = [];

  void getHomeData() {
    emit(AppLoadingState());
    DioHelper.getData(
      endpoint: "/api/v1/products",
      token: CacheHelper.getData(key: "apiToken"),
    ).then((value) async {
      // All = value.data['message'];

      All = value.data['data'];


      emit(AppSucessState());
    }).catchError((erorr) {
      emit(AppErorrState(erorr.toString()));
      print(erorr.toString());
    });
  }

  void getSeedsData() {
    emit(SeedsLoadingState());
    DioHelper.getData(
      endpoint: "/api/v1/seeds",
      token: CacheHelper.getData(key: "apiToken"),
    ).then((value) async {
      // All = value.data['message'];

      seeds = value.data['data'];
      print(seeds);
      emit(SeedsSucessState());
    }).catchError((erorr) {
      emit(SeedsErorrState(erorr.toString()));
      print(erorr.toString());
    });
  }

  void getToolsData() {
    emit(ToolsLoadingState());
    DioHelper.getData(
      endpoint: "/api/v1/tools",
      token: CacheHelper.getData(key: "apiToken"),
    ).then((value) async {
      // All = value.data['message'];

      tools = value.data['data'];

      emit(ToolsSucessState());
    }).catchError((erorr) {
      emit(ToolsErorrState(erorr.toString()));
      print(erorr.toString());
    });
  }
  void getProfileData() {
    emit(ProfileLoadingState());
    DioHelper.getData(
      endpoint: "/api/v1/user/me",
      token: CacheHelper.getData(key: "apiToken"),
    ).then((value) async {
      // All = value.data['message'];

      profile = value.data['data'];
print(profile["firstName"]);
      emit(ProfileSucessState());
    }).catchError((erorr) {
      emit(ProfileErorrState(erorr.toString()));
      print(erorr.toString());
    });

  }
  void updateUser({ String ?email, String ?Firstname,String ?Lastname,
    }) {
    emit(updateProfileLoadingState());
    DioHelper.patchData(endpoint: "/api/v1/user/me", data: {'firstName': Firstname,

      'lastName': Lastname,'email':email}).then((value) {


    newprofile=value.data['data'];


      emit(updateProfileSucessState());

    }).catchError((erorr) {
      emit(updateProfileErorrState(erorr.toString()));
      print(erorr.toString());
    });
  }

}

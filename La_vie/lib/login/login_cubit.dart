import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:la_vie/dio_healper.dart';
import 'package:la_vie/login/login_model.dart';

import 'package:la_vie/login/state.dart';
import 'package:la_vie/sharedpreferences.dart';

class LoginCubit extends Cubit<LoginStates> {
  LoginCubit() : super(LoginInitialState());

  static LoginCubit get(context) => BlocProvider.of(context);

  LoginModel? loginmod;
  Map<String, dynamic>? map;
  Map<String, dynamic>? login;

  void userLogin({required String email, required String password}) {
    emit(LoginLoadingState());
    DioHelper.postData(
        endpoint: "/api/v1/auth/signin",
        data: {'email': email, 'password': password}).then((value) {
      loginmod = LoginModel.fromJson(value.data);
      print(loginmod?.message);

      map = value.data['data'];
      print(map!['accessToken']);

      CacheHelper.savedata(key: "apiToken", value: map!['accessToken']);

      emit(LoginSucessState(loginmod));
    }).catchError((erorr) {
      emit(LoginErorrState(erorr.toString()));
      print(erorr.toString());
    });
  }

}

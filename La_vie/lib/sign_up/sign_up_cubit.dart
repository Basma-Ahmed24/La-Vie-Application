import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:la_vie/dio_healper.dart';
import 'package:la_vie/login/login_model.dart';

import 'package:la_vie/sign_up/sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpStates>{

  SignUpCubit(): super(SignUpInitialState());

  static SignUpCubit get(context)=> BlocProvider.of(context);
  LoginModel? loginmod;
  void userSignUp({required String email,required String password,required String fname,
    required String lname}) {
    emit(SignUpLoadingState());
    DioHelper.postData(endpoint: "/api/v1/auth/signup", data: {'firstName': fname,

      'lastName': lname,'email':email,'password': password}).then((value) {
      print(value.data);

      loginmod=LoginModel.fromJson(value.data);
      print(loginmod ?.message);

      emit(SignUpSucessState(loginmod));

    }).catchError((erorr) {
      emit(SignUpErorrState(erorr.toString()));
      print(erorr.toString());
    });
  }
}
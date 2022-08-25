import 'package:la_vie/login/login_model.dart';

abstract class SignUpStates {
}
class SignUpInitialState extends SignUpStates{}
class SignUpLoadingState extends SignUpStates{}
class SignUpSucessState extends SignUpStates{
  final LoginModel ?model;
  SignUpSucessState(this.model);
}
class SignUpErorrState extends SignUpStates{
  final String erorr;
  SignUpErorrState(this.erorr);
}

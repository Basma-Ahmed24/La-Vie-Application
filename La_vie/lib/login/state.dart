import 'package:la_vie/login/login_model.dart';

abstract class LoginStates {
}
class LoginInitialState extends LoginStates{}
class LoginLoadingState extends LoginStates{}
class LoginSucessState extends LoginStates{
  final LoginModel ?model;
  LoginSucessState(this.model);
}
class LoginErorrState extends LoginStates{
  final String erorr;
  LoginErorrState(this.erorr);
}

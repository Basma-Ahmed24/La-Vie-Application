class LoginModel {
  String ?type;
  String ?message;

  UserData ?data;
  LoginModel.fromJson(Map<String,dynamic> json){
    type=json['type'];
    message=json['message'];
    data=json['data']!=null ? UserData.fromJson(json['data']):null;
        //!=null?UserData.fromJson(json['data']):null;

  }
}
class UserData{
  Map<String,dynamic>?user;

String? token;

UserData.fromJson(Map<String,dynamic>json){
user=json['user'];
token =json['accessToken'];


}
}
abstract class AppStates{}
class AppChangeBottomNavState extends AppStates{}
class AppInitialState extends AppStates{}
class AppLoadingState extends AppStates{}
class AppSucessState extends AppStates{

}
class AppErorrState extends AppStates{
  final String erorr;
  AppErorrState(this.erorr);
}
class SeedsChangeBottomNavState extends AppStates{}
class SeedsInitialState extends AppStates{}
class SeedsLoadingState extends AppStates{}
class SeedsSucessState extends AppStates{

}
class SeedsErorrState extends AppStates{
  final String erorr;
  SeedsErorrState(this.erorr);
}
class ToolsChangeBottomNavState extends AppStates{}
class ToolsInitialState extends AppStates{}
class ToolsLoadingState extends AppStates{}
class ToolsSucessState extends AppStates{

}
class ToolsErorrState extends AppStates{
  final String erorr;
  ToolsErorrState(this.erorr);
}
class ProfileChangeBottomNavState extends AppStates{}
class ProfileInitialState extends AppStates{}
class ProfileLoadingState extends AppStates{}
class ProfileSucessState extends AppStates{}


  class ProfileErorrState extends AppStates{
  final String erorr;
  ProfileErorrState(this.erorr);
}
class updateProfileChangeBottomNavState extends AppStates{}
class updateProfileInitialState extends AppStates{}
class updateProfileLoadingState extends AppStates{}
class updateProfileSucessState extends AppStates{}


class updateProfileErorrState extends AppStates{
  final String erorr;
  updateProfileErorrState(this.erorr);
}
abstract class PlantsStates{}
class PlantsChangeBottomNavState extends PlantsStates{}
class PlantsInitialState extends PlantsStates{}
class PlantsLoadingState extends PlantsStates{}
class PlantsSucessState extends PlantsStates{

}
class PlantsErorrState extends PlantsStates{
  final String erorr;
  PlantsErorrState(this.erorr);
}
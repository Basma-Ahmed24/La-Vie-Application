
class HomeModel{

  String ?message;
  HomeDataModel ?data;
  HomeModel.fromJson(Map<String,dynamic>json){

    message=json['message'];
    data=HomeDataModel.fromJson(json['data']);
  }
}
class HomeDataModel {
  PlantModel ?Plant ;
  SeedsModel ?seeds ;
  ToolsModel ?tools ;
  HomeDataModel.fromJson(Map<String,dynamic> json)
  {
    Plant=json['plant'];
    seeds=json['seed'];
    tools =json['tool'];
  }
}
class PlantModel {
  PlantModel.fromJson(Map<String,dynamic> json);
}
class SeedsModel {
  SeedsModel.fromJson(Map<String,dynamic> json
      );
}
class ToolsModel {
  ToolsModel.fromJson(Map<String,dynamic> json);
}

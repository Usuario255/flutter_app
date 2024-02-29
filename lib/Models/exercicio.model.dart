class ExercicioModel {
  String id;
  String name;
  String comoFazer;
  String treino;
  String? img;

  ExercicioModel(
      {required this.id,
      required this.name,
      required this.treino,
      required this.comoFazer});

  ExercicioModel.fromMap(Map<String, dynamic> map)
      : id = map["id"],
        name = map["name"],
        treino = map["treino"],
        comoFazer = map["comoFazer"],
        img = map["img"];

  Map<String, dynamic> toMap(){
    return {
     "id": id,
     "name": name,
     "treino": treino,
     "comoFazer": comoFazer,
     "img":img
    };
  }      
}

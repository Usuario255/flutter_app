class SentimentoModel {
  String id;
  String sentimento;
  String data;

  SentimentoModel(
      {required this.id, required this.data, required this.sentimento});

  SentimentoModel.fromMap(Map<String, dynamic> map)
      : id = map["id"],
        data = map["data"],
        sentimento = map["sentimento"];

    Map<String, dynamic> toMap(){
    return {
     "id": id,
     "data": data,
     "sentimento": sentimento,
    };
  }     
}

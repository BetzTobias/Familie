import 'package:family/src/domain/suptopic.dart';

class Categorie {
  String categorieName;
  List<Suptopic> supTopics;
  Categorie({
    required this.categorieName,
    required this.supTopics,
  });
  Map<String, dynamic> toMap() {
    List<Map<String, dynamic>> mapList = [];
    for (Suptopic supTopic in supTopics) {
      mapList.add(supTopic.toMap());
    }
    return {"catergorieName": categorieName, "supTopics": mapList};
  }
  factory Categorie.fromMap(Map<String, dynamic> map) {
    return Categorie(
      categorieName: map['categorieName'],
     supTopics: (map['suptopics'] as List).map((suptopic) => Suptopic.fromMap(suptopic)).toList(),
    );
  }
}

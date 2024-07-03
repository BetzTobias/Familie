import 'package:family/src/domain/undertopic.dart';

class Suptopic {
  String secondaryName;
  List<UnderTopic> underTopics;
  Suptopic({
    required this.secondaryName,
    required this.underTopics,
  });
  Map<String, dynamic> toMap() {
    List<Map<String, dynamic>> mapList = [];
    for (UnderTopic underTopic in underTopics) {
      mapList.add(underTopic.toMap());
    }
      return {"secondaryName": secondaryName, "underTopics": mapList};
  }
}

import 'package:family/src/domain/content.dart';

class UnderTopic {
  String underName;
  List<Content> contents;
  UnderTopic({
    required this.underName,
    required this.contents,
  });
  Map<String, dynamic> toMap() {
    List<Map<String, dynamic>> mapList = [];
    for (Content content in contents) {
      mapList.add(content.toMap());
    }
      return {"underName": underName, "contents": mapList};
  }
}

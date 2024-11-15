class Content {
  final String contents;
  final String suptopic;
  final String undertopic;
  Content({
    required this.contents,
    required this.suptopic,
    required this.undertopic,
  });
  Map<String, dynamic> toMap() {
    return {
      "contents": contents,
      "suptopic": suptopic,
      "undertopic": undertopic
    };
  }
  factory Content.fromMap(Map<String, dynamic> map) {
    return Content(
      contents: map['contents'],
      undertopic: map['undertopic'],
      suptopic: map['suptopic'],
    );
  }
}

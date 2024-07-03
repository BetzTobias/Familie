class User {
  String username;
  String password;
  String email;

  User({
    required this.username,
    required this.password,
    required this.email,
  });
  Map<String, dynamic> toMap() {
    return {"username": username, "password": password, "email": email};
  }
}

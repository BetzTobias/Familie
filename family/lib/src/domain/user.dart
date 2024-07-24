import 'package:firebase_auth_platform_interface/src/auth_credential.dart';

class MyUser {
  String username;
  String password;
  String email;

  MyUser({
    required this.username,
    required this.password,
    required this.email,
  });

  String? get uid => null;
  Map<String, dynamic> toMap() {
    return {"username": username, "password": password, "email": email};
  }

  factory MyUser.fromMap(Map<String, dynamic> map) {
    return MyUser(
      username: map['username'],
      password: map['password'],
      email: map['email'],
    );
  }

  reauthenticateWithCredential(AuthCredential credential) {}

  delete() {}
}

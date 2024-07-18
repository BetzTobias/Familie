import 'package:family/src/domain/user.dart';

abstract class DatabaseRepository {
  Future<User?> getMyUser();

  Future<void> setUsername(String name);

  Future<void> setPhonenumber(String number);

  Future<void> setEmail(String email);

  Future<void> setPassword(String password);

  Future<List<String>> getUpdates();

  Future<void> deleteAccount();

  Future<void> updateUser(String newEmail);

  Future<void> updateUser1(String newUser);

  Future<void> updateUser2(String newPassword);

  Future<void> updateUser3(String newPhoneNumber);
}

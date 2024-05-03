import '../domain/register.dart';

abstract class DatabaseRepository {
  void loginUser(User currentUser);
}

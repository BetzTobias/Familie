import 'package:family/src/domain/user.dart';

abstract class DatabaseRepository {
  void loginUser(User currentUser);
}

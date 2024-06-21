import 'package:family/src/domain/categorie.dart';
import 'package:family/src/domain/user.dart';

abstract class DatabaseRepository {
  Future<void> loginUser(User currentUser);
  Future<User?> getUser();
  Future<void> removedUser();
  Future<List<Categorie>> getCategorie();
}

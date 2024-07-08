import 'package:family/src/domain/categorie.dart';
import 'package:family/src/domain/user.dart';

abstract class DatabaseRepository {
  Future<User?> getUser();

  Future<List<Categorie>> getCategorie();
}

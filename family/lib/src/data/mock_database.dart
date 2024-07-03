import 'package:family/src/domain/categorie.dart';
import 'package:family/src/domain/content.dart';
import 'package:family/src/domain/suptopic.dart';
import 'package:family/src/domain/undertopic.dart';
import 'package:family/src/domain/user.dart';

import 'database_repository.dart';

class MockDatabase implements DatabaseRepository {
  User? currentUser = User('Tobias', 'Tamara2119.', 'tobiasbetz149@gmail.com');

  List<Categorie> categorie = [
    Categorie('Unterhaltung', [
      Suptopic('Basteln', [
        UnderTopic(
            'Sommer', [Content(contents: '', undertopic: '', suptopic: '')])
      ])
    ])
  ];

  @override
  Future<void> loginUser(User currentUser) async {
    this.currentUser = currentUser;
  }

  @override
  Future<User?> getUser() async {
    return currentUser;
  }

  @override
  Future<void> removedUser() async {
    currentUser = null;
  }

  @override
  Future<List<Categorie>> getCategorie() async {
    return categorie;
  }

  Future<void> updateCategoriesFromMap(List<Map<String, dynamic>> maps) async {
    categorie = maps.map((map) => Categorie.fromMap(map)).toList();
  }

  Future<void> updateUserFromMap(Map<String, dynamic> map) async {
    currentUser = User.fromMap(map);
  }
}

import 'package:family/src/domain/categorie.dart';
import 'package:family/src/domain/undertopic.dart';
import 'package:family/src/domain/user.dart';
import 'package:family/src/features/content/presentation/categories_page.dart';

import 'database_repository.dart';

class MockDatabase implements DatabaseRepository {
  User? currentUser = User('Tobias', '151042020', 'betztobias605@gmail.com');

  List<CategoriesPage> categorie = [
    Categorie('Unterhaltung', [
      Suptopic('Basteln', [
        UnderTopic('Sommer', [Content()])
      ])
    ])
  ];

  @override
  void loginUser(User currentUser) {
    this.currentUser = currentUser;
  }

  User? getUser() {
    return currentUser;
  }

  void removedUser() {
    currentUser = null;
  }

  List<CategoriesPage> getCategorie() {
    return categorie;
  }
}

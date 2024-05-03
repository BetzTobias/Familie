import 'package:family/src/features/content/presentation/categories_page.dart';
import 'package:family/src/domain/categorie.dart';
import 'package:family/src/domain/user.dart';
import 'database_repository.dart';
import 'package:family/src/domain/suptopic.dart';

class MockDatabase implements DatabaseRepository {
  User? currentUser = User('Tobias', '151042020', 'betztobias605@gmail.com');

  List<CategoriesPage> categorie = [
    Categorie('Unterhaltung', [
      Subtopic('Basteln', [
        UnderTopic('Sommer', [Contents()])
      ])
    ])
  ];

  void loginBenutzer(User currentUser) {
    this.currentUser = currentUser;
  }

  User? getBenutzer() {
    return currentUser;
  }

  void removedUser() {
    currentUser = null;
  }

  List<Categorie> getCategorie() {
    return categorie;
  }
}

import 'package:family/src/domain/categorie.dart';
import 'package:family/src/domain/content.dart';
import 'package:family/src/domain/suptopic.dart';
import 'package:family/src/domain/undertopic.dart';
import 'package:family/src/domain/user.dart';

import 'database_repository.dart';

class MockDatabase implements DatabaseRepository {
  User? currentUser = User('Tobias', '151042020', 'betztobias605@gmail.com');

  List<Categorie> categorie = [
    Categorie('Unterhaltung', [
      Suptopic('Basteln', [
        UnderTopic(
            'Sommer', [Content(contents: '', undertopic: '', suptopic: '')])
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

  List<Categorie> getCategorie() {
    return categorie;
  }
}

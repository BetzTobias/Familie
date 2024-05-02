import 'package:family/src/data/database_repository.dart';

class MockDatabase implements DatabaseRepository {
  Benutzer? jetzigerBenutzer =
      Benutzer('Tobias', '151042020', 'betztobias605@gmail.com');

  List<Kategorie> kategorien = [
    Kategorie('Unterhaltung', [
      NebenThema('Basteln', [
        UnterThema('Sommer', [Inhalt()])
      ])
    ])
  ];

  @override
  void loginBenutzer(Benutzer jetztigerBenutzer) {
    jetzigerBenutzer = jetztigerBenutzer;
  }

  Benutzer? getBenutzer() {
    return jetzigerBenutzer;
  }

  void removedBenutzer() {
    jetzigerBenutzer = null;
  }

  List<Kategorie> getKategorien() {
    return kategorien;
  }
}

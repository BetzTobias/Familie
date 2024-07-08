// import 'package:family/src/domain/categorie.dart';
// import 'package:family/src/domain/content.dart';
// import 'package:family/src/domain/suptopic.dart';
// import 'package:family/src/domain/undertopic.dart';
// import 'package:family/src/domain/user.dart';

// import 'database_repository.dart';

// class MockDatabase implements DatabaseRepository {
//   User? currentUser = User(password: '', email: '', username: '');

//   // List<Categorie> categorie = [
//   //   Categorie(categorieName: "", // Hauptname
//   //   supTopics: [
//   //     Suptopic(
//   //       secondaryName: "secondaryName", 
//   //       underTopics: [
//   //       UnderTopic(
//   //           underName: "",
//   //           contents: [Content(
//   //             contents: "", // Inhalt
//   //             suptopic: "", // Nebenthema
//   //             undertopic: "")]) // Unterthema
//   //     ])
//   //   ])
//   // ];

//   @override
//   Future<User?> getUser() async {
//     return currentUser;
//   }

//   // @override
//   // Future<List<Categorie>> getCategorie() async {
//   //   return categorie;
//   // }

//   // Future<void> updateCategoriesFromMap(List<Map<String, dynamic>> maps) async {
//   //   categorie = maps.map((map) => Categorie.fromMap(map)).toList();
//   // }

//   Future<void> updateUserFromMap(Map<String, dynamic> map) async {
//     currentUser = User.fromMap(map);
//   }
// }

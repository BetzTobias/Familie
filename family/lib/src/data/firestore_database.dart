import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:family/src/data/database_repository.dart';
import 'package:family/src/domain/user.dart';
import 'package:firebase_auth/firebase_auth.dart' hide User;

class FirestoreDatabase implements DatabaseRepository {
  final FirebaseFirestore _firebaseFirestore;
  FirestoreDatabase(this._firebaseFirestore);

  @override
  Future<List<String>> getUpdates() async {
    final snapshot = await _firebaseFirestore
        .collection("info")
        .doc("ISdTXO37hHz9Tv0LWM2J")
        .get();
    print(snapshot.data());
    return List<String>.from(snapshot.data()!["update"]);
  }

  @override
  Future<User?> getMyUser() async {
    final snapshot =
        await _firebaseFirestore.collection('user').doc('user.id').get();
    final map = snapshot.data();
    if (map == null) {
      return null;
    } else {
      return User.fromMap(map);
    }
  }

  @override
  Future<void> setEmail(String email) async {
    try {
      await _firebaseFirestore
          .collection('User')
          .doc(FirebaseAuth.instance.currentUser!.uid)
          .set({'email': email}, SetOptions(merge: true));
    } catch (e) {
      print('Error: $e');
    }
  }

  @override
  Future<void> setPassword(String password) async {
    try {
      await _firebaseFirestore
          .collection('User')
          .doc(FirebaseAuth.instance.currentUser!.uid)
          .set({'password': password}, SetOptions(merge: true));
    } catch (e) {
      print('Error: $e');
    }
  }

  @override
  Future<void> setPhonenumber(String number) async {
    try {
      await _firebaseFirestore
          .collection('User')
          .doc(FirebaseAuth.instance.currentUser!.uid)
          .set({'telefonnummer': number}, SetOptions(merge: true));
    } catch (e) {
      print('Error: $e');
    }
  }

  @override
  Future<void> setUsername(String name) async {
    try {
      await _firebaseFirestore
          .collection('User')
          .doc(FirebaseAuth.instance.currentUser!.uid)
          .set({'username': name}, SetOptions(merge: true));
    } catch (e) {
      print('Error: $e');
    }
  }

  @override
  Future<void> deleteAccount() async {
    try {
      await FirebaseAuth.instance.currentUser!.delete();
      // Löschen der Benutzerdaten aus Firestore
      await _firebaseFirestore
          .collection('User')
          .doc(FirebaseAuth.instance.currentUser!.uid)
          .delete();

      // Löschen des Benutzerkontos
    } catch (e) {
      print('Fehler beim Löschen des Accounts: $e');
      throw e;
    }
  }
}

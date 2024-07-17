import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:family/src/data/database_repository.dart';
import 'package:family/src/domain/user.dart';
import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:flutter/foundation.dart';

class FirestoreDatabase implements DatabaseRepository {
  final FirebaseFirestore _firebaseFirestore;
  FirestoreDatabase(this._firebaseFirestore);

  @override
  Future<List<String>> getUpdates() async {
    final snapshot = await _firebaseFirestore
        .collection("info")
        .doc("ISdTXO37hHz9Tv0LWM2J")
        .get();
    debugPrint(snapshot.data().toString());
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
      debugPrint('Error: $e');
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
      debugPrint('Error: $e');
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
      debugPrint('Error: $e');
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
      debugPrint('Error: $e');
    }
  }

  @override
  Future<void> deleteAccount() async {
    try {
      await _firebaseFirestore
          .collection('User')
          .doc(FirebaseAuth.instance.currentUser!.uid)
          .delete();
      await FirebaseAuth.instance.currentUser!.delete();
      // Löschen der Benutzerdaten aus Firestore
      debugPrint('Geschafft');
      // Löschen des Benutzerkontos
    } catch (e) {
      debugPrint('Fehler beim Löschen des Accounts: $e');
    }
  }

  @override
  Future<void> updateUser(String newEmail) async {
    try {
      await _firebaseFirestore
          .collection('User')
          .doc(FirebaseAuth.instance.currentUser!.uid)
          .update({'email': newEmail});

      debugPrint('Email ändern war erfolgreich');
    } catch (e) {
      debugPrint('Ändern der Email Fehlgeschlagen: $e');
    }
  }
}

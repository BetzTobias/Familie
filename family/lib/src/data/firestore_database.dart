import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:family/src/data/database_repository.dart';
import 'package:family/src/domain/user.dart';
import 'package:firebase_auth/firebase_auth.dart';
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
  Future<MyUser?> getMyUser() async {
    final snapshot =
        await _firebaseFirestore.collection('user').doc('user.id').get();
    final map = snapshot.data();
    if (map == null) {
      return null;
    } else {
      return MyUser.fromMap(map);
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
      var user = FirebaseAuth.instance.currentUser;
      user?.delete();
      // Löschen der Benutzerdaten aus Firestore
      print('Geschafft');
      // Löschen des Benutzerkontos
    } catch (e) {
      print('Fehler beim Löschen des Accounts: $e');
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

  @override
  Future<void> updateUser1(String newUsername) async {
    try {
      await _firebaseFirestore
          .collection('User')
          .doc(FirebaseAuth.instance.currentUser!.uid)
          .update({'username': newUsername});

      debugPrint('Benutzername ändern war erfolgreich');
    } catch (e) {
      debugPrint('Ändern des Benutzername Fehlgeschlagen: $e');
    }
  }

  @override
  Future<void> updateUser2(String newPassword) async {
    try {
      await _firebaseFirestore
          .collection('User')
          .doc(FirebaseAuth.instance.currentUser!.uid)
          .update({'password': newPassword});

      debugPrint('Passwort ändern war erfolgreich');
    } catch (e) {
      debugPrint('Ändern des Passworts Fehlgeschlagen: $e');
    }
  }

  @override
  Future<void> updateUser3(String newPhone) async {
    try {
      await _firebaseFirestore
          .collection('User')
          .doc(FirebaseAuth.instance.currentUser!.uid)
          .update({'phone': newPhone});

      debugPrint('Telefonnummer ändern war erfolgreich');
    } catch (e) {
      debugPrint('Ändern der Telefonnummer Fehlgeschlagen: $e');
    }
  }
  @override
    Future<DocumentSnapshot> _getUserData() async {
    User? user = _auth.currentUser;

    if (user != null) {
      return await _firestore.collection('users').doc(user.uid).get();
    } else {
      throw Exception('No user is currently signed in.');
    }
  }
}

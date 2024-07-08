import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:family/src/data/database_repository.dart';
import 'package:family/src/domain/categorie.dart';
import 'package:family/src/domain/user.dart';

class FirestoreDatabase implements DatabaseRepository {
  final FirebaseFirestore _firebaseFirestore;
  FirestoreDatabase(this._firebaseFirestore);

  @override
  Future<List<Categorie>> getCategorie() async {
    final snapshot = await _firebaseFirestore.collection('categorie').get();
    return snapshot.docs.map((doc) => Categorie.fromMap(doc.data())).toList();
  }

  @override
  Future<User?> getUser() async {
    final snapshot =
        await _firebaseFirestore.collection('user').doc('user.id').get();
    final map = snapshot.data();
    if (map == null) {
      return null;
    } else {
      return User.fromMap(map);
    }
  }
}

import 'package:baches_app/User/model/user.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class CloudFireStoreAPI {
  final String USERS = "users";
  final String BACHES = "baches";

  final FirebaseFirestore _db = FirebaseFirestore.instance;

  void updateUserData(User user) async {
    DocumentReference ref = _db.collection(USERS).doc(user.uId);
    return ref.set({
      'uId': user.uId,
      'name': user.name,
      'email': user.email,
      'photoURL': user.photoURL,
      'myBaches': user.myBaches,
      'myHatedBaches': user.myHatedBaches,
      'lastSignIn': DateTime.now()
    });
  }
}

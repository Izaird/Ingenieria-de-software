import 'package:baches_app/Bache/model/bache.dart';
import 'package:baches_app/User/model/user.dart' as bachesUser;
import 'package:baches_app/User/repository/firebase_auth_api.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

class CloudFireStoreAPI {
  final String USERS = "users";
  final String BACHES = "baches";

  final FirebaseFirestore _db = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  void updateUserData(bachesUser.User user) async {
    DocumentReference ref = _db.collection(USERS).doc(user.uId);
    return await ref.set({
      'uId': user.uId,
      'name': user.name,
      'email': user.email,
      'photoURL': user.photoURL,
      'myBaches': user.myBaches,
      'myHatedBaches': user.myHatedBaches,
      'lastSignIn': DateTime.now()
    });
  }

  // accediendo a la data para subir un place
  Future<void> updateBacheData(Bache bache) async {
    // accediendo a la data para subir un place
    CollectionReference refPlaces = _db.collection(BACHES);
    User user = _auth.currentUser;
    // consultando el user logueado
    await refPlaces.add({
      // definiendo los keys de la data (q es lo q queremos){
      "where": bache.where,
      'description': bache.description,
      'likes': bache.dislikes,
      'userOwner': "${USERS}/${user.uid}", //reference
    });
  }
}

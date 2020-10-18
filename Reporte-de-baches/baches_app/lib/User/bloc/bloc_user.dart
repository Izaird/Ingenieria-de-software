import 'dart:io';
import 'package:baches_app/Bache/model/bache.dart';
import 'package:baches_app/Bache/repository/firebase_storage_repository.dart';
import 'package:baches_app/User/model/user.dart';
// import 'package:baches_app/User/repository/cloud_firestore_api.dart';
import 'package:baches_app/User/repository/cloud_firestore_repository.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;
/*We import the package as auth to avoid confusion with the user class*/
import 'package:baches_app/User/repository/auth_repository.dart';

/*This file contains all use cases of User */
class UserBloc implements Bloc {
  final _authRepository = AuthRepository();

  //Data streams
  //Stream  - Firebase
  //We dont have to use the class StreamController because Firebase already give
  //us the data as a Stream

  Stream<auth.User> streamFirebase =
      auth.FirebaseAuth.instance.authStateChanges();

  //Method to get the session status.
  Stream<auth.User> get authStatus => streamFirebase;

  //Method to get the id of the current user
  Future<auth.User> currentUser() async {
    auth.User user = auth.FirebaseAuth.instance.currentUser;
    return user;
  }

  //Use cases
  //1. Sign in to the application
  Future<auth.User> signIn() => _authRepository.signInFirebase();

  //2. Register user on the database
  final _cloudFirestorRepository = CloudFireStoreRepository();
  void updateUserData(User user) =>
      _cloudFirestorRepository.updateUserDataFirestore(user);
  Future<void> updateBacheData(Bache bache) =>
      _cloudFirestorRepository.updateBacheData(bache);

  //Firebase StorageA
  final _firebaseStorageRepository = FirebaseStorageRepository();
  Future<StorageUploadTask> uploadFile(String path, File image) =>
      _firebaseStorageRepository.uploadFile(path, image);

  signOut() {
    _authRepository.signOut();
  }

  @override
  void dispose() {
    return null;
  }
}

import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:baches_app/User/repository/firebase_auth_api.dart';

class AuthRepository {
  final _firebaseAuthAPI = FirebaseAuthAPI();
  Future<auth.User> signInFirebase() => _firebaseAuthAPI.signIn();
}

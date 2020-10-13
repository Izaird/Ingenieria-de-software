import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:baches_app/User/repository/firebase_auth_api.dart';

class AuthRepository {
//   //Data flow - Streams
//   //Stream - Firebase
//   /*We don't need to use the class StreanController with Firebase because
//   Firebase already send us the information in the form of a stream*/
//   Stream<auth.User> streamFirabase =
//       auth.FirebaseAuth.instance.authStateChanges();

// //Variable to save the state of the session
//   Stream<auth.User> get authStatus => streamFirabase;
//   //Use cases
  //1. Sign in to the application
  final _firebaseAuthAPI = FirebaseAuthAPI();
  Future<auth.User> signInFirebase() => _firebaseAuthAPI.signIn();

  signOut() => _firebaseAuthAPI.signOut();
}

import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:google_sign_in/google_sign_in.dart';

class FirebaseAuthAPI {
  final auth.FirebaseAuth _auth = auth.FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = GoogleSignIn();

  Future<auth.User> signIn() async {
//Variable to save google account information
    GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();
    //Variable to save google authentication
    GoogleSignInAuthentication gSA = await googleSignInAccount.authentication;
    auth.UserCredential userCredential = await _auth.signInWithCredential(
        auth.GoogleAuthProvider.credential(
            idToken: gSA.idToken, accessToken: gSA.accessToken));

    return userCredential.user;
  }
}

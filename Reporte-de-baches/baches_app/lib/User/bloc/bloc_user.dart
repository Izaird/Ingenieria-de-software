import 'package:firebase_auth/firebase_auth.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;
/*We import the package as auth to avoid confusion with the user class*/
import 'package:baches_app/User/repository/auth_repository.dart';

/*This file contains all use cases of User */
class UserBloc implements Bloc {
  final _authRepository = AuthRepository();

//Sign In to the application
  Future<auth.User> signIn() {
    return _authRepository.signInFirebase();
  }

  @override
  void dispose() {
    return null;
  }
}

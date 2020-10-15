import 'package:baches_app/baches_app.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:baches_app/widgets/gradient_back.dart';
import 'package:baches_app/widgets/button_01.dart';
import 'package:baches_app/User/bloc/bloc_user.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:baches_app/User/model/user.dart' as baches_user;

class SignInScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SignInScreen();
  }
}

class _SignInScreen extends State<SignInScreen> {
  UserBloc userBloc;
  double screenWidth;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    userBloc = BlocProvider.of(context);
    return _handleCurrentSession();
  }

  Widget _handleCurrentSession() {
    return StreamBuilder(
      stream: userBloc.authStatus,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        //Snapshot contains our data
        if (!snapshot.hasData || snapshot.hasError) {
          //It we don't have any data or we have an error we stay at
          //Sthe login screen
          return signInGoogleUI();
        } else {
          //if we have data then we proced to the main screen.
          return BachesApp();
        }
      },
    );
  }

  Widget signInGoogleUI() {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          GradientBack(height: null),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              //Title of the sign in screen
              Flexible(
                child: Container(
                  width: screenWidth,
                  child: Text(
                    "Bienvenido \n Esta es tu aplicacion para reportar baches.",
                    style: TextStyle(
                      fontSize: 37.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Lato",
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Button01(
                text: "Ingresar con Gmail",
                onPressed: () {
                  userBloc.signOut();
                  userBloc.signIn().then((auth.User user) {
                    userBloc.updateUserData(baches_user.User(
                      uId: user.uid,
                      name: user.displayName,
                      email: user.email,
                      photoURL: user.photoURL,
                    ));
                  });
                },
                width: 300.0,
                height: 50.0,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:baches_app/baches_app.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:baches_app/widgets/gradient_back.dart';
import 'package:baches_app/widgets/button_01.dart';
import 'package:baches_app/User/bloc/bloc_user.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;

class SignInScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SignInScreen();
  }
}

class _SignInScreen extends State<SignInScreen> {
  UserBloc userBloc;

  @override
  Widget build(BuildContext context) {
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
        children: [
          GradientBack("", null),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Bienvenido \n Esta es tu aplicacion para reportar baches",
                style: TextStyle(
                  fontFamily: "Lato",
                  fontSize: 37.0,
                  color: Colors.white,
                ),
              ),
              Button01(
                text: "Ingresar con Gmail",
                onPressed: () {
                  userBloc.signOut();
                  userBloc
                      .signIn()
                      .then((auth.User user) => print("El usuario es $user"));
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

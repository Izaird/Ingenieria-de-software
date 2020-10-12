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
    return signInGoogleUI();
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
                  userBloc.signIn();
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

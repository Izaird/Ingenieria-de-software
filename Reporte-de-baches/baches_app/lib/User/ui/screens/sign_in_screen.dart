import 'package:flutter/material.dart';
import 'package:baches_app/widgets/gradient_back.dart';

class SignInScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SignInScree();
  }
}

class _SignInScree extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return signInGoogleUI();
  }
}

Widget signInGoogleUI() {
  return Scaffold(
    body: Stack(
      alignment: Alignment.center,
      children: [
        GradientBack("", null),
        Column(
          children: [
            Text(
              "Bienvenido \n Esta es tu aplicacion para reportar baches",
              style: TextStyle(
                fontFamily: "Lato",
                fontSize: 37.0,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

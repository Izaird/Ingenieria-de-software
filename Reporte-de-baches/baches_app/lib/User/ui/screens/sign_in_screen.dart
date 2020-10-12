import 'package:flutter/material.dart';
import 'package:baches_app/widgets/gradient_back.dart';
import 'package:baches_app/widgets/button_01.dart';

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
              onPressed: () {},
              width: 300.0,
              height: 50.0,
            ),
          ],
        ),
      ],
    ),
  );
}

import 'package:flutter/material.dart';
import 'package:baches_app/widgets/gradient_back.dart';

class HeaderAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[GradientBack("Bienvenido", 250.0)],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:baches_app/widgets/button_purple.dart';

class Definition extends StatelessWidget {
  final String nameBache;
  final String descriptionBache;

  Definition(this.nameBache, this.descriptionBache);

  @override
  Widget build(BuildContext context) {
    final title = Container(
      margin: EdgeInsets.only(top: 350.0, left: 20.0, right: 20.0),
      child: Text(
        nameBache,
        style: TextStyle(
            fontFamily: "Lato", fontSize: 30.0, fontWeight: FontWeight.w900),
        textAlign: TextAlign.left,
      ),
    );

    final description = Container(
      margin: new EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
      child: new Text(
        descriptionBache,
        style: const TextStyle(
            fontFamily: "Lato",
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
            color: Color(0xFF56575a)),
      ),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        title,
        description,
      ],
    );
  }
}

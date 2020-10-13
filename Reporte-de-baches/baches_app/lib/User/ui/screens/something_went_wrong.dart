import 'package:flutter/material.dart';
import 'package:baches_app/Bache/ui/screens/header_appbar.dart';
import 'package:baches_app/Bache/ui/widgets/definition_list.dart';

class SomethingWentWrong extends StatelessWidget {
  final String descriptionDummy =
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. \n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.";
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ListView(
          children: <Widget>[
            DefinitionList(),
          ],
        ),
        HeaderAppBar()
      ],
    );
  }
}

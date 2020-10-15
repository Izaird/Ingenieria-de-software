import 'package:flutter/material.dart';
import 'package:baches_app/Bache/ui/screens/header_appbar.dart';
import 'package:baches_app/Bache/ui/widgets/definition_list.dart';

class InfoAboutBaches extends StatelessWidget {
  final String description;
  InfoAboutBaches(this.description);

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

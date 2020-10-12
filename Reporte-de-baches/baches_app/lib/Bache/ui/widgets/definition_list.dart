import 'package:flutter/material.dart';
import 'package:baches_app/Bache/ui/widgets/definition.dart';
import 'package:lipsum/lipsum.dart' as lipsum;

class DefinitionList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Definition("Bache", lipsum.createParagraph(numSentences: 5))
      ],
    );
  }
}

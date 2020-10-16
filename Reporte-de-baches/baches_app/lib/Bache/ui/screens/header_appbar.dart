import 'package:baches_app/Bache/ui/widgets/card_image_list.dart';
import 'package:flutter/material.dart';
import 'package:baches_app/widgets/gradient_back.dart';

class HeaderAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        GradientBack(height: 250.0),
        CardImageList(),
      ],
    );
  }
}

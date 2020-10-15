import 'package:baches_app/Bache/ui/widgets/card_image.dart';
import 'package:flutter/material.dart';

class CardImageList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350.0,
      child: ListView(
        padding: EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CardImageWithButton(
              pathImage: "assets/img/beach_palm.jpeg",
              iconData: Icons.favorite_border),
          CardImageWithButton(
              pathImage: "assets/img/beach.jpeg",
              iconData: Icons.favorite_border),
          CardImageWithButton(
              pathImage: "assets/img/girl.jpeg",
              iconData: Icons.favorite_border),
          CardImageWithButton(
              pathImage: "assets/img/beach_palm.jpeg",
              iconData: Icons.favorite_border),
          CardImageWithButton(
              pathImage: "assets/img/girl.jpeg",
              iconData: Icons.favorite_border),
        ],
      ),
    );
  }
}

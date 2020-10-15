import 'package:baches_app/Bache/ui/widgets/card_image.dart';
import 'package:flutter/material.dart';

class CardImageList extends StatelessWidget {
  final imageWidth = 300.0;
  final imageHeight = 350.0;
  final left = 20.0;

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
            iconData: Icons.favorite_border,
            width: imageWidth,
            height: imageHeight,
            left: left,
          ),
          CardImageWithButton(
            pathImage: "assets/img/beach.jpeg",
            iconData: Icons.favorite_border,
            width: imageWidth,
            height: imageHeight,
            left: left,
          ),
          CardImageWithButton(
            pathImage: "assets/img/girl.jpg",
            iconData: Icons.favorite_border,
            width: imageWidth,
            height: imageHeight,
            left: left,
          ),
          CardImageWithButton(
            pathImage: "assets/img/beach_palm.jpeg",
            iconData: Icons.favorite_border,
            width: imageWidth,
            height: imageHeight,
            left: left,
          ),
          CardImageWithButton(
            pathImage: "assets/img/girl.jpg",
            iconData: Icons.favorite_border,
            width: imageWidth,
            height: imageHeight,
            left: left,
          ),
        ],
      ),
    );
  }
}

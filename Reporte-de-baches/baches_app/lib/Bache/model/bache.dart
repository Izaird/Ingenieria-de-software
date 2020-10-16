import 'package:baches_app/User/model/user.dart';
import 'package:flutter/cupertino.dart';

class Bache {
  String bId;
  String where;
  String description;
  String urlImage;
  User userOwner;
  String date;
  int dislikes;

  Bache({
    Key key,
    @required this.where,
    @required this.description,
    @required this.urlImage,
    @required this.userOwner,
    this.dislikes,
  });
}

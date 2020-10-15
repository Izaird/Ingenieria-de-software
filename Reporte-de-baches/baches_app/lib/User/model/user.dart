import 'package:flutter/material.dart';
import 'package:baches_app/Bache/model/bache.dart';

class User {
  final String uId;
  final String name;
  final String email;
  final String photoURL;
//Reports of the user
  final List<Bache> myBaches;
  final List<Bache> myHatedBaches;

  User({
    Key key,
    @required this.uId,
    @required this.name,
    @required this.email,
    @required this.photoURL,
    this.myBaches,
    this.myHatedBaches,
  });
}

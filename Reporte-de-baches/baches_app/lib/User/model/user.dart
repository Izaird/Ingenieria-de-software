import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class User {
  final String name;
  final String email;
  final String photoURL;

  User({
    Key key,
    @required this.name,
    @required this.email,
    @required this.photoURL,
  });
}

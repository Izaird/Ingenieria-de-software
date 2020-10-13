import 'package:baches_app/User/ui/widgets/profile_baches_list.dart';
import 'package:flutter/material.dart';
import 'package:baches_app/User/ui/screens/profile_header.dart';
import 'package:baches_app/User/ui/widgets/profile_background.dart';

class ProfileBaches extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ProfileBackground(),
        ListView(
          children: <Widget>[
            ProfileHeader(),
            ProfileBachesList(),
          ],
        ),
      ],
    );
  }
}

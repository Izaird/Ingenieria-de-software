import 'package:flutter/material.dart';
import 'package:baches_app/User/ui/widgets/profile_bache.dart';
import 'package:baches_app/Bache/model/bache.dart';

class ProfileBachesList extends StatelessWidget {
  Bache bache = new Bache(
      'Knuckles Mountains Range',
      'Hiking. Water fall hunting. Natural bath',
      'Scenery & Photography',
      '123,123,123');
  Bache bache2 = new Bache(
      'Mountains',
      'Hiking. Water fall hunting. Natural bath',
      'Scenery & Photography',
      '321,321,321');

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0, bottom: 10.0),
      child: Column(
        children: <Widget>[
          ProfileBache('assets/img/river.jpeg', bache),
          ProfileBache('assets/img/mountain.jpeg', bache2),
        ],
      ),
    );
  }
}

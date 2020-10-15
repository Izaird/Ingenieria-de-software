import 'package:flutter/material.dart';
import 'package:baches_app/User/ui/widgets/profile_bache.dart';
import 'package:baches_app/Bache/model/bache.dart';

class ProfileBachesList extends StatelessWidget {
  final Bache bache = Bache(
      where: "Knuckles Mountains Range",
      description: "Hiking. Water fall hunting. Natural bath",
      urlImage:
          "https://www.cronica.com.ar/__export/1562455681828/sites/cronica/img/2019/07/06/bache_gigante.jpg_1734428432.jpg",
      dislikes: 3);
  final Bache bache2 = Bache(
      where: "Knuckles Mountains Range",
      description: "Hiking. Water fall hunting. Natural bath",
      urlImage:
          "https://www.planetacurioso.com/wp-content/uploads/2011/10/auto-cae-bache-gigante.jpg",
      dislikes: 3);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0, bottom: 10.0),
      child: Column(
        children: <Widget>[
          ProfileBache(bache),
          ProfileBache(bache2),
        ],
      ),
    );
  }
}

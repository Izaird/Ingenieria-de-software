import 'package:flutter/material.dart';
import 'package:baches_app/Bache/model/bache.dart';
import 'package:baches_app/widgets/floating_action_button_green.dart';

class ProfileBacheInfo extends StatelessWidget {
  final Bache bache;

  ProfileBacheInfo(this.bache);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    final bache = Text(
      this.bache.name,
      style: TextStyle(
          fontFamily: 'Lato', fontSize: 20.0, fontWeight: FontWeight.bold),
    );

    final placeInfo = Padding(
        padding: EdgeInsets.symmetric(vertical: 10.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                this.bache.where,
                style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 0.4),
                    fontFamily: 'Lato',
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                this.bache.type,
                style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 0.4),
                    fontFamily: 'Lato',
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold),
              )
            ]));

    final steps = Text(
      'Steps ${this.bache.date}',
      style: TextStyle(
          fontFamily: 'Lato',
          fontSize: 14.0,
          fontWeight: FontWeight.bold,
          color: Colors.amber),
    );

    final card = Container(
      width: screenWidth * 0.65,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          color: Colors.white,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black38,
                blurRadius: 10.0,
                offset: Offset(0.0, 5.0))
          ]),
      child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[bache, placeInfo, steps],
          )),
    );

    return Stack(
      alignment: Alignment(0.8, 1.25),
      children: <Widget>[card, FloatingActionButtonGreen()],
    );
  }
}

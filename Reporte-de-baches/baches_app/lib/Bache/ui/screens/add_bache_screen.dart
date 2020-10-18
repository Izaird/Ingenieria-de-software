import 'dart:io';
import 'package:baches_app/Bache/model/bache.dart';
import 'package:baches_app/Bache/ui/widgets/card_image.dart';
import 'package:baches_app/Bache/ui/widgets/text_input_location.dart';
import 'package:baches_app/User/bloc/bloc_user.dart';
import 'package:baches_app/widgets/button_purple.dart';
import 'package:baches_app/widgets/gradient_back.dart';
import 'package:baches_app/widgets/text_input.dart';
import 'package:baches_app/widgets/title_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

class AddBacheScreen extends StatefulWidget {
  final File image;

  AddBacheScreen({Key key, this.image});

  @override
  State createState() {
    return _AddPlaceScreen();
  }
}

class _AddPlaceScreen extends State<AddBacheScreen> {
  @override
  Widget build(BuildContext context) {
    final _controllerTitlePlace = TextEditingController();
    final _controllerDescriptionPlace = TextEditingController();
    final _controllerLocation = TextEditingController();
    UserBloc userBloc = BlocProvider.of(context);

    return Scaffold(
      body: Stack(
        children: <Widget>[
          GradientBack(
            height: 300.0,
          ),
          Row(
            //App Bar
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 25.0, left: 5.0),
                child: SizedBox(
                  height: 45.0,
                  width: 45.0,
                  child: IconButton(
                      icon: Icon(
                        Icons.keyboard_arrow_left,
                        color: Colors.white,
                        size: 45,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                ),
              ),
              Flexible(
                  child: Container(
                padding: EdgeInsets.only(top: 45.0, left: 20.0, right: 10.0),
                child: TitleHeader(title: "Add a new Place"),
              ))
            ],
          ),
          Container(
            margin: EdgeInsets.only(
              top: 120.0,
              bottom: 20.0,
            ),
            child: ListView(
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  child: CardImageWithButton(
                    pathImage: widget.image.path,
                    iconData: Icons.camera,
                    width: 300.0,
                    height: 350.0,
                  ),
                ), //Foto
                Container(
                  //TextField Title
                  margin: EdgeInsets.only(
                    bottom: 20.0,
                    top: 20.0,
                  ),
                  child: TextInput(
                    hintText: "Title",
                    inputType: null,
                    maxLines: 1,
                    controller: _controllerTitlePlace,
                  ),
                ),
                TextInput(
                  //Description
                  hintText: "Description",
                  inputType: TextInputType.multiline,
                  maxLines: 4,
                  controller: _controllerDescriptionPlace,
                ),
                Container(
                  margin: EdgeInsets.only(top: 20.0),
                  child: TextInputLocation(
                    hintText: "Add Location",
                    iconData: Icons.location_on,
                    controller: _controllerLocation,
                  ),
                ),
                Container(
                  width: 70.0,
                  child: ButtonPurple(
                    buttonText: "Add Place",
                    onPressed: () {
                      //1. Firebase Storage
                      //url -

                      //2. Cloud Firestore
                      //Place - title, description, url, userOwner, likes
                      userBloc
                          .updateBacheData(
                        Bache(
                          where: _controllerLocation.text,
                          description: _controllerDescriptionPlace.text,
                          // urlImage: s
                          // userOwner: null,
                          dislikes: 0,
                        ),
                      )
                          .whenComplete(() {
                        print("Termino");
                        Navigator.pop(context);
                      });
                    },
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

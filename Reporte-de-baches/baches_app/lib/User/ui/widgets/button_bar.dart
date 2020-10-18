import 'dart:io';
import 'package:baches_app/Bache/ui/screens/add_bache_screen.dart';
import 'package:baches_app/User/bloc/bloc_user.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:image_picker/image_picker.dart';
import 'circle_button.dart';

class ButtonsBar extends StatelessWidget {
  //We got to add this variable to get acces to the method signIn()

  @override
  Widget build(BuildContext context) {
    final UserBloc userBloc = BlocProvider.of(context);
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 10.0),
        child: Row(
          children: <Widget>[
            //Change the password
            CircleButton(true, Icons.vpn_key_sharp, 20.0,
                Color.fromRGBO(255, 255, 255, 1), () => {}),

            //Add a new bache
            CircleButton(
                false, Icons.add, 40.0, Color.fromRGBO(255, 255, 255, 1), () {
              ImagePicker.pickImage(source: ImageSource.camera)
                  .then((File image) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) =>
                            AddBacheScreen(image: image)));
              }).catchError((onError) => print(onError));
            }),

            //Sign out
            CircleButton(true, Icons.exit_to_app, 20.0,
                Color.fromRGBO(255, 255, 255, 1), () => {userBloc.signOut()}),
          ],
        ));
  }
}

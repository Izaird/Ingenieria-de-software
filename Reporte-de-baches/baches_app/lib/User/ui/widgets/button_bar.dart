import 'package:baches_app/User/bloc/bloc_user.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'circle_button.dart';

class ButtonsBar extends StatelessWidget {
  //We got to add this variable to get acces to the method signIn()

  UserBloc userBloc;
  @override
  Widget build(BuildContext context) {
    userBloc = BlocProvider.of(context);
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 10.0),
        child: Row(
          children: <Widget>[
            //Change the password
            CircleButton(true, Icons.vpn_key_sharp, 20.0,
                Color.fromRGBO(255, 255, 255, 1), () => {}),

            //Add a new bache
            CircleButton(true, Icons.report_problem, 20.0,
                Color.fromRGBO(255, 255, 255, 1), () => {}),

            //Sign out
            CircleButton(true, Icons.exit_to_app, 20.0,
                Color.fromRGBO(255, 255, 255, 1), () => {userBloc.signOut()}),
          ],
        ));
  }
}

import 'package:baches_app/User/bloc/bloc_user.dart';
import 'package:flutter/material.dart';
import 'package:baches_app/User/ui/widgets/user_info.dart';
import 'package:baches_app/User/ui/widgets/button_bar.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:baches_app/User/model/user.dart';

class ProfileHeader extends StatelessWidget {
  UserBloc userBloc;
  User user;
  @override
  Widget build(BuildContext context) {
    userBloc = BlocProvider.of<UserBloc>(context);

    return StreamBuilder(
      stream: userBloc.streamFirebase,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.waiting:
            return CircularProgressIndicator();
          case ConnectionState.none:
            return CircularProgressIndicator();
          case ConnectionState.active:
            return showProfileData(snapshot);
          case ConnectionState.done:
            return showProfileData(snapshot);
        }
      },
    );

    // final title = Text(
    //   'Profile',
    //   style: TextStyle(
    //       fontFamily: 'Lato',
    //       color: Colors.white,
    //       fontWeight: FontWeight.bold,
    //       fontSize: 30.0),
    // );

    // return Container(
    //   margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 50.0),
    //   child: Column(
    //     children: <Widget>[
    //       Row(
    //         children: <Widget>[title],
    //       ),
    //       UserInfo('assets/img/ann.jpg', 'Mothelet Delgado Izaird Alexander',
    //           'izaird@hotmail.com'),
    //       ButtonsBar()
    //     ],
    //   ),
    // );
  }

  Widget showProfileData(AsyncSnapshot snapshot) {
    if (!snapshot.hasData || snapshot.hasError) {
      print("Not logged");

      return Container(
        margin: EdgeInsets.only(
          left: 20.0,
          right: 20.0,
          top: 50.0,
        ),
        child: Column(
          children: <Widget>[
            CircularProgressIndicator(),
            Text(
                "No se pudo cargar la información. Asegurate de haber iniciado sesion"),
          ],
        ),
      );
    } else {
      print("Logged");
      print(snapshot.data);
      user = User(
          name: snapshot.data.displayName,
          email: snapshot.data.email,
          photoURL: snapshot.data.photoUrl);
      final title = Text(
        'Profile',
        style: TextStyle(
            fontFamily: 'Lato',
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 30.0),
      );

      return Container(
        margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 50.0),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[title],
            ),
            UserInfo(user),
            ButtonsBar()
          ],
        ),
      );
    }
  }
}

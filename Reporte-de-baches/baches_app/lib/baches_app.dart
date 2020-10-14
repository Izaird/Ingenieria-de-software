import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:lipsum/lipsum.dart' as lipsum;
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:baches_app/User/bloc/bloc_user.dart';
import 'package:baches_app/Bache/ui/screens/home_bache.dart';
import 'package:baches_app/User/ui/screens/profile_baches.dart';
import 'package:baches_app/Bache/ui/screens/header_appbar.dart';

class BachesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          //Buttons of the tabBar
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.indigo,
              ),
              label: (""),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.indigo,
              ),
              label: (""),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.info,
                color: Colors.indigo,
              ),
              label: (""),
            ),
          ],
        ),
        tabBuilder: (BuildContext context, int index) {
          switch (index) {
            case 0:
              return CupertinoTabView(
                builder: (BuildContext context) {
                  return BlocProvider<UserBloc>(
                    bloc: UserBloc(),
                    child: HomeBache(lipsum.createWord()),
                  );
                },
              );
              break;
            case 1:
              return CupertinoTabView(
                builder: (BuildContext context) {
                  return BlocProvider<UserBloc>(
                    bloc: UserBloc(),
                    child: ProfileBaches(),
                  );
                },
              );
              break;
            case 2:
              return CupertinoTabView(
                builder: (BuildContext context) {
                  return BlocProvider<UserBloc>(
                    bloc: UserBloc(),
                    child: HeaderAppBar(),
                  );
                },
              );
              break;
          }
        },
      ),
    );
  }
}

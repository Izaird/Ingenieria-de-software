// import 'package:baches_app/navigation_bar.dart;
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:baches_app/User/bloc/bloc_user.dart';
import 'package:baches_app/User/ui/screens/sign_in_screen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  /*Since Agust 17, 2020 all versions of Firebase packages have been updated 
 and how it is necessary to call the Firebase.initializeApp() before using
 any Firebase service.*/
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Baches app',
          home: SignInScreen(),
        ),
        bloc: UserBloc());
  }
}

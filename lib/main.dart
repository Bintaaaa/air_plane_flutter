import 'package:air_plane/ui/pages/bonus_page.dart';
import 'package:air_plane/ui/pages/get_started.dart';
import 'package:air_plane/ui/pages/main_page.dart';
import 'package:air_plane/ui/pages/sign_up_page.dart';
import 'package:flutter/material.dart';
import 'ui/pages/splash_page.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/get-started': (context) => GetStartedPage(),
        '/sign-up-page': (context) => SignUpPage(),
        '/bonus': (context) => BonusPage(),
        '/main': (context) => MainPage()
      },
    );
  }
}

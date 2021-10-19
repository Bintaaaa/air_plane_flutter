import 'dart:async';

import 'package:air_plane/ui/pages/get_started.dart';
import 'package:flutter/material.dart';
import '../../style/theme.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  //if you wont to hold this page can use this function or like bottom function
  // @override
  // void initState() {
  //   //delay
  //   Timer(Duration(seconds: 2), (){
  //     Navigator.push(context, MaterialPageRoute(builder: (context) => GetStartedPage()));
  //   });
  //   super.initState();
  // }

  @override
  void initState() {
    Timer(Duration(seconds: 2),(){
      Navigator.pushNamed(context, '/get-started');
    });
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              margin: EdgeInsets.only(bottom: 24),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/icon_plane.png',
                  )
                )
              ),
            ),
            Text(
              "AIRPLANE",
              style: whiteTextStyle.copyWith(
                fontSize: 24,
                fontWeight: medium,
                letterSpacing: 10
              ),
            )
          ],
        ),
      ),
    );
  }
}

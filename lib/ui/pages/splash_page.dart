import 'package:flutter/material.dart';
import '../../style/theme.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

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

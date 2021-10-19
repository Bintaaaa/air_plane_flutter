import 'package:flutter/material.dart';
import '../../style/theme.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/image_get_started.png"
                ),
                fit: BoxFit.fill
              )
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Fly Me To The Moon",
                  style: whiteTextStyle.copyWith(
                    fontSize: 24,
                    fontWeight: semiBold
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Explore new world with us and\nlet yourself get amazing experiences",
                  style: whiteTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: ligth
                  ),
                  textAlign: TextAlign.center,
                ),
                Container(
                  margin: EdgeInsets.only(top: defaultMargin,bottom: defaultMargin),
                  width: 220,
                  height: 50,
                  child: TextButton(
                    onPressed: (){
                      Navigator.pushNamed(context, '/sign-up-page');
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: kPrimaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(defaultRadius)
                      )
                    ),
                    child: Text(
                      "Get Started",
                      style: whiteTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: medium
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

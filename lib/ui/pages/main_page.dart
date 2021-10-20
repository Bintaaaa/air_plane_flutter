import 'package:air_plane/ui/widgets/item_bottom_navigation.dart';
import 'package:flutter/material.dart';
import '../../style/theme.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget bottomNavigation(){
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          height: 60,
          margin: EdgeInsets.only(bottom: defaultMargin, right: defaultMargin, left: defaultMargin),
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(17)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
             ItemBottomNavigation(iconUrl: "icon_home",isSelected: true,),
             ItemBottomNavigation(iconUrl: "icon_booking",),
             ItemBottomNavigation(iconUrl: "icon_card",),
             ItemBottomNavigation(iconUrl: "icon_settings",),
            ],
          ),
        ),
      );
    }


    return Scaffold(
      body: Stack(
        children: [
          bottomNavigation()
        ],
      ),
    );
  }
}

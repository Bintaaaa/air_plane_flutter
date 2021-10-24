import 'package:air_plane/cubit/page_cubit.dart';
import 'package:air_plane/ui/pages/setting_page.dart';
import 'package:air_plane/ui/pages/transaction_page.dart';
import 'package:air_plane/ui/pages/wallet_page.dart';
import 'package:air_plane/ui/widgets/item_bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../style/theme.dart';
import 'home_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget bottomNavigation() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          height: 60,
          margin: EdgeInsets.only(
              bottom: defaultMargin, right: defaultMargin, left: defaultMargin),
          decoration: BoxDecoration(
              color: kWhiteColor, borderRadius: BorderRadius.circular(17)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ItemBottomNavigation(
                  iconUrl: "icon_home", isSelected: true, index: 0),
              ItemBottomNavigation(
                iconUrl: "icon_booking",
                index: 1,
              ),
              ItemBottomNavigation(
                iconUrl: "icon_card",
                index: 2,
              ),
              ItemBottomNavigation(
                iconUrl: "icon_settings",
                index: 3,
              ),
            ],
          ),
        ),
      );
    }

    Widget buildContent(int currentIndex) {
      switch (currentIndex) {
        case 0:
          return HomePage();
        case 1:
          return TransactionPage();
        case 2:
          return WalletPage();
        case 3:
          return SettingPage();
        default:
          return HomePage();
      }
      return HomePage();
    }

    return BlocBuilder<PageCubit, int>(
      builder: (context, currentIndex) {
        return Scaffold(
          body: Stack(
            children: [buildContent(currentIndex), bottomNavigation()],
          ),
        );
      },
    );
  }
}

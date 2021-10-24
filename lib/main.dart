import 'package:air_plane/cubit/page_cubit.dart';
import 'package:air_plane/ui/pages/SuccessPage.dart';
import 'package:air_plane/ui/pages/bonus_page.dart';
import 'package:air_plane/ui/pages/checkout_page.dart';
import 'package:air_plane/ui/pages/choose_seat_page.dart';
import 'package:air_plane/ui/pages/detail_page.dart';
import 'package:air_plane/ui/pages/get_started.dart';
import 'package:air_plane/ui/pages/main_page.dart';
import 'package:air_plane/ui/pages/sign_up_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'ui/pages/splash_page.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => PageCubit())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SplashPage(),
          '/get-started': (context) => GetStartedPage(),
          '/sign-up-page': (context) => SignUpPage(),
          '/bonus': (context) => BonusPage(),
          '/main': (context) => MainPage(),
          '/detail-page': (context) => DetailPage(),
          '/choose-seat': (context) => ChooseSeatPage(),
          '/checkout': (context) => CheckoutPage(),
          '/success': (context) => SuccessCheckoutPage()
        },
      ),
    );
  }
}

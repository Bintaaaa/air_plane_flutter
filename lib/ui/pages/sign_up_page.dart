import 'package:air_plane/ui/widgets/item_button.dart';
import 'package:air_plane/ui/widgets/item_text_form_field.dart';
import 'package:flutter/material.dart';
import '../../style/theme.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget title(){
      return Container(
        margin: EdgeInsets.only(top: defaultMargin),
        child: Text("Join us and get\nyour next journey",
        style: blackTextStyle.copyWith(
          fontSize: 24,
          fontWeight: semiBold
        ),),
      );
    }

    Widget inputSection(){



      Widget submitButtom(){
        return ItemButton(title: "Submit", onPressed: (){
          Navigator.pushNamed(context, '/bonus');
        },);
      }

      Widget tacButton(){
        return Container(
          margin: EdgeInsets.only(top: defaultMargin*2, bottom: 50),
          child: Text("Terms and Conditions",
          style: greyTextStyle.copyWith(
              fontSize: 16,
              fontWeight: ligth,
            decoration: TextDecoration.underline
          ),
          ),
        );
      }

      return Container(
        margin: EdgeInsets.only(top: defaultMargin),
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
          vertical: defaultMargin
        ),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
        child: Column(
          children: [
            ItemFieldFormText(title: "Full Name", hint: "Your full name"),
            ItemFieldFormText(title: "Email Address", hint: "example@gmail.com"),
            ItemFieldFormText(title: "Password", hint: "Ex4MpL3",secureText: true),
            ItemFieldFormText(title: "Hobby", hint: "Your Hobby"),
            submitButtom(),
            tacButton()
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin
          ),
          children: [
            title(),
            inputSection()
          ],
        ),
      ),
    );
  }
}

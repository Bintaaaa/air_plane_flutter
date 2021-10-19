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

      Widget  defaultInput(String title, String hint, bool secureText){
        return Container(
          margin: EdgeInsets.only(bottom: defaultMargin),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title),
              SizedBox(
                height: 6,
              ),
              TextFormField(
                cursorColor: kBlackColor,
                obscureText: secureText,
                decoration: InputDecoration(
                  hintText: hint,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(defaultRadius),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(defaultRadius),
                    borderSide: BorderSide(
                      color: kPrimaryColor
                    )
                  )
                ),
              )
            ],
          ),
        );
      }

      Widget submitButtom(){
        return Container(
          width: double.infinity,
          height: 55,
          child: TextButton(onPressed: (){},
              style: TextButton.styleFrom(
                backgroundColor: kPrimaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(defaultRadius)
                )
              ),
              child: Text("Submit",
                style: whiteTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium
                ),
              ),
          ),
        );
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
            defaultInput("Full Name", "Your Full Name",false),
            defaultInput("Email Address", "example@gmail.com", false),
            defaultInput("Password", "Your Password", true),
            defaultInput("Hobby", "example: Photography", false),
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

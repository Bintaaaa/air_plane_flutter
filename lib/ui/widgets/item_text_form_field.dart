import 'package:air_plane/style/theme.dart';
import 'package:flutter/material.dart';

class ItemFieldFormText extends StatelessWidget {
  final String title;
  final String hint;
  final bool secureText;
  const ItemFieldFormText({Key? key, required this.title, required this.hint, this.secureText = false }) : super(key: key);
  @override
  Widget build(BuildContext context) {
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
}

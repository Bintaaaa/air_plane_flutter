import 'package:air_plane/style/theme.dart';
import 'package:flutter/material.dart';

class ItemButton extends StatelessWidget {
  final String title;
  final double width;
  final Function() onPressed;

  const ItemButton({Key? key, required this.title, this.width = double.infinity, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: defaultMargin,bottom: defaultMargin),
      width: width,
      height: 50,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
            backgroundColor: kPrimaryColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(defaultRadius)
            )
        ),
        child: Text(
          title ,
          style: whiteTextStyle.copyWith(
              fontSize: 16,
              fontWeight: medium
          ),
        ),
      ),
    );
  }
}

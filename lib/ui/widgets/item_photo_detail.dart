import 'package:flutter/material.dart';

class ItemPhotoDetail extends StatelessWidget {
  final String imageUrl;
  const ItemPhotoDetail({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      margin: EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(17),
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                  "assets/$imageUrl.png"
              )
          )
      ),
    );
  }
}

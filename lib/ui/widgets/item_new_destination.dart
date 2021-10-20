import 'package:air_plane/style/theme.dart';
import 'package:flutter/material.dart';

class ItemNewDestination extends StatelessWidget {
  final String imageurl;
  final String place;
  final String city;
  const ItemNewDestination({Key? key, required this.imageurl, required this.place, required this.city}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 90,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(top: 16),
      decoration: BoxDecoration(
          color: kWhiteColor, borderRadius: BorderRadius.circular(17)),
      child: Row(
        children: [
          Container(
            width: 70,
            height: 70,
            margin: EdgeInsets.only(right: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(17),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/$imageurl.png"),
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "$place",
                  style: blackTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: medium,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "$city",
                  style: greyTextStyle.copyWith(fontWeight: ligth),
                )
              ],
            ),
          ),
          Container(
            width: 24,
            height: 24,
            margin: EdgeInsets.only(right: 8),
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/icon_star.png")),
            ),
          ),
          Text(
            "3.4",
            style: blackTextStyle.copyWith(fontWeight: medium),
          ),
        ],
      ),
    );
  }
}

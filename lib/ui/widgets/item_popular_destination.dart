import 'package:air_plane/style/theme.dart';
import 'package:flutter/material.dart';

class ItemPopularDestination extends StatelessWidget {

  final String imgUrl;
  final String place;
  final String city;

  const ItemPopularDestination({Key? key, required this.imgUrl, required this.place, required this.city}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: defaultMargin),
      child: Row(
        children: [
          Container(
            width: 200,
            height: 323,
            margin: EdgeInsets.only(left: defaultMargin),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(17), color: kWhiteColor),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 180,
                  height: 220,
                  margin: EdgeInsets.only(bottom: defaultMargin - 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(17),
                    image: DecorationImage(
                        image: AssetImage("assets/$imgUrl.png")),
                  ),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 55,
                      height: 30,
                      decoration: BoxDecoration(
                        color: kWhiteColor,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(17),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 20,
                            height: 20,
                            margin: EdgeInsets.only(right: 4),
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/icon_star.png"))),
                          ),
                          Text(
                            "4.8",
                            style: blackTextStyle.copyWith(fontWeight: medium),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                      ),
                    ],
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

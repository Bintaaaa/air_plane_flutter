import 'package:air_plane/style/theme.dart';
import 'package:air_plane/ui/widgets/item_button.dart';
import 'package:air_plane/ui/widgets/item_interest_detail.dart';
import 'package:air_plane/ui/widgets/item_photo_detail.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget backgroundImage() {
      return Container(
        width: double.infinity,
        height: 450,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/image_destination1.png"))),
      );
    }

    Widget shadowGradient() {
      return Container(
        width: double.infinity,
        height: 214,
        margin: EdgeInsets.only(top: 236),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              kWhiteColor.withOpacity(0),
              Colors.black.withOpacity(0.95)
            ])),
      );
    }

    Widget content() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.fromLTRB(
            defaultMargin, defaultMargin * 2.5, defaultMargin, 0),
        child: Column(
          children: [
            Container(
              width: 100,
              height: 24,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/icon_emblem.png"))),
            ),
            Container(
              margin: EdgeInsets.only(top: 256),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Cigombong Lake",
                          style: whiteTextStyle.copyWith(
                            fontSize: 24,
                            fontWeight: semiBold,
                          ),
                        ),
                        Text(
                          "Cigombong Bogor",
                          style: whiteTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: ligth,
                          ),
                          overflow: TextOverflow.ellipsis,
                        )
                      ],
                    ),
                  ),
                  Row(
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
                        style: whiteTextStyle.copyWith(fontWeight: medium),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 16),
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 30),
              decoration: BoxDecoration(
                  color: kWhiteColor, borderRadius: BorderRadius.circular(17)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "About",
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    "and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting.",
                    style:
                        blackTextStyle.copyWith(fontWeight: ligth, height: 2),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    "Photos",
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Row(
                    children: [
                      ItemPhotoDetail(imageUrl: "image_photo1"),
                      ItemPhotoDetail(imageUrl: "image_photo2"),
                      ItemPhotoDetail(imageUrl: "image_photo3"),
                      ItemPhotoDetail(imageUrl: "image_photo1"),
                    ],
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    "Interest",
                    style: blackTextStyle.copyWith(
                        fontSize: 16, fontWeight: semiBold),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Row(
                    children: [
                      ItemInterestDetail(facility: "Kids Park"),
                      ItemInterestDetail(facility: "Honor Bridge"),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      ItemInterestDetail(facility: "City Museum"),
                      ItemInterestDetail(facility: "Central Mall"),
                    ],
                  ),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(top: 30),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "IDR 2.500.00",
                                style: blackTextStyle.copyWith(
                                    fontSize: 18, fontWeight: bold),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "per orang",
                                style: greyTextStyle.copyWith(fontWeight: ligth),
                              )
                            ],
                          ),
                        ),
                        ItemButton(title: "Book Now", width: 130, onPressed: (){
                          Navigator.pushNamed(context, "/choose-seat");
                        })
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Stack(
          children: [
            backgroundImage(),
            shadowGradient(),
            content(),
          ],
        ),
      ),
    );
  }
}

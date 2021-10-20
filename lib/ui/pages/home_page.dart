import 'package:air_plane/style/theme.dart';
import 'package:air_plane/ui/widgets/item_popular_destination.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  Widget header() {
    return Container(
      margin: EdgeInsets.all(defaultMargin),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hello,\nHaggilao Graces",
                  style: blackTextStyle.copyWith(
                    fontSize: 20,
                    fontWeight: semiBold,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 6),
                Text(
                  "Where to fly today?",
                  style:
                      greyTextStyle.copyWith(fontSize: 16, fontWeight: ligth),
                )
              ],
            ),
          ),
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage("assets/image_profile.png"))),
          )
        ],
      ),
    );
  }

  Widget popularDestination() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ItemPopularDestination(imgUrl: "image_destination1", place: "Cigombong Lake", city: "Cigombong, Bogor"),
          ItemPopularDestination(imgUrl: "image_destination2", place: "Ciater Snow", city: "Ciater, Subang"),
          ItemPopularDestination(imgUrl: "image_destination3", place: "Pelabuhan Ratu", city: "Pelabuhan, Sukabumi"),
          ItemPopularDestination(imgUrl: "image_destination4", place: "Surya Kencana", city: "Surya Kencana, Bogor"),
          ItemPopularDestination(imgUrl: "image_destination5", place: "Taman-taman", city: "Yaya, Sigapore"),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        header(),
        popularDestination(),
      ],
    );
  }
}

import 'package:air_plane/style/theme.dart';
import 'package:air_plane/ui/widgets/item_seat_status.dart';
import 'package:flutter/material.dart';

class ChooseSeatPage extends StatelessWidget {
  const ChooseSeatPage({Key? key}) : super(key: key);

  Widget title() {
    return Container(
      margin: EdgeInsets.only(top: defaultMargin),
      child: Text(
        "Select Your\nFavorite Seat",
        style: blackTextStyle.copyWith(fontSize: 24, fontWeight: bold),
      ),
    );
  }

  Widget seatStatus() {
    return Row(
      children: [
        ItemSeatStatus(imgUrl: "icon_available", status: "Available"),
        ItemSeatStatus(imgUrl: "icon_selected", status: "Selected"),
        ItemSeatStatus(imgUrl: "icon_unavailable", status: "Unavailable"),
      ],
    );
  }

  Widget selectedSeat() {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: defaultMargin),
      padding: EdgeInsets.symmetric(
        horizontal: defaultMargin,
        vertical: 30,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(17),
        color: kWhiteColor,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Center(
                  child: Text(
                    "A",
                    style: greyTextStyle.copyWith(fontSize: 16),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    "B",
                    style: greyTextStyle.copyWith(fontSize: 16),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    "",
                    style: greyTextStyle.copyWith(fontSize: 16),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    "C",
                    style: greyTextStyle.copyWith(fontSize: 16),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    "D",
                    style: greyTextStyle.copyWith(fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                width: 48,
                height: 48,
                margin: EdgeInsets.only(top: 16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(17),
                    color: kUnavailable),
              ),
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          children: [title(), seatStatus(), selectedSeat()],
        ),
      ),
    );
  }
}

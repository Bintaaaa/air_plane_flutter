import 'package:air_plane/style/theme.dart';
import 'package:air_plane/ui/widgets/item_button.dart';
import 'package:air_plane/ui/widgets/item_seat.dart';
import 'package:air_plane/ui/widgets/item_seat_status.dart';
import 'package:flutter/material.dart';

class ChooseSeatPage extends StatefulWidget {
  const ChooseSeatPage({Key? key}) : super(key: key);

  @override
  State<ChooseSeatPage> createState() => _ChooseSeatPageState();
}

class _ChooseSeatPageState extends State<ChooseSeatPage> {
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 48,
                child: Center(
                  child: Text(
                    "A",
                    style: greyTextStyle.copyWith(fontSize: 16),
                  ),
                ),
              ),
              Container(
                width: 48,
                child: Center(
                  child: Text(
                    "B",
                    style: greyTextStyle.copyWith(fontSize: 16),
                  ),
                ),
              ),
              Container(
                width: 48,
                child: Center(
                  child: Text(
                    "",
                    style: greyTextStyle.copyWith(fontSize: 16),
                  ),
                ),
              ),
              Container(
                width: 48,
                child: Center(
                  child: Text(
                    "C",
                    style: greyTextStyle.copyWith(fontSize: 16),
                  ),
                ),
              ),
              Container(
                width: 48,
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ItemSeat(status: 0),
              ItemSeat(status: 2),
              Container(
                width: 48,
                height: 48,
                margin: EdgeInsets.only(top: 16),
                child: Center(child: Text("1")),
              ),
              ItemSeat(status: 1),
              ItemSeat(status: 1),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ItemSeat(status: 0),
              ItemSeat(status: 0),
              Container(
                width: 48,
                height: 48,
                margin: EdgeInsets.only(top: 16),
                child: Center(child: Text("2")),
              ),
              ItemSeat(status: 2),
              ItemSeat(status: 0),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ItemSeat(status: 1),
              ItemSeat(status: 2),
              Container(
                width: 48,
                height: 48,
                margin: EdgeInsets.only(top: 16),
                child: Center(child: Text("3")),
              ),
              ItemSeat(status: 0),
              ItemSeat(status: 0),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ItemSeat(status: 0),
              ItemSeat(status: 0),
              Container(
                width: 48,
                height: 48,
                margin: EdgeInsets.only(top: 16),
                child: Center(child: Text("4")),
              ),
              ItemSeat(status: 0),
              ItemSeat(status: 0),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ItemSeat(status: 2),
              ItemSeat(status: 2),
              Container(
                width: 48,
                height: 48,
                margin: EdgeInsets.only(top: 16),
                child: Center(child: Text("5")),
              ),
              ItemSeat(status: 2),
              ItemSeat(status: 2),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: defaultMargin),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Your seat",
                  style:
                      greyTextStyle.copyWith(fontSize: 16, fontWeight: ligth),
                ),
                Text(
                  "A3, C1, D1",
                  style:
                      blackTextStyle.copyWith(fontSize: 16, fontWeight: ligth),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: defaultMargin),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total price",
                  style:
                      greyTextStyle.copyWith(fontSize: 16, fontWeight: ligth),
                ),
                Text(
                  "IDR 5.223.000",
                  style:
                      purpleTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
                ),
              ],
            ),
          ),
          ItemButton(title: "Continue to Checkout", onPressed: (){
            Navigator.pushNamed(context, "/checkout");
          })
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

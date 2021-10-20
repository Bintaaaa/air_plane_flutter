import 'package:air_plane/ui/widgets/item_button.dart';
import 'package:flutter/material.dart';
import '../../style/theme.dart';

class BonusPage extends StatefulWidget {
  const BonusPage({Key? key}) : super(key: key);

  @override
  _BonusPageState createState() => _BonusPageState();
}

class _BonusPageState extends State<BonusPage> {
  Widget bonusCard() {
    return Container(
      width: 300,
      height: 211,
      padding: EdgeInsets.all(defaultMargin),
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/image_card.png')),
          boxShadow: [
            BoxShadow(
                color: kPrimaryColor.withOpacity(0.5),
                blurRadius: 50,
                offset: Offset(0, 10))
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Name",
                      style: whiteTextStyle.copyWith(fontWeight: ligth),
                    ),
                    Text(
                      "Haggilao Graces",
                      style: whiteTextStyle.copyWith(
                          fontSize: 20, fontWeight: medium),
                      overflow: TextOverflow.ellipsis,
                    )
                  ],
                ),
              ),
              Container(
                width: 24,
                height: 24,
                margin: EdgeInsets.only(right: 6),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/icon_plane.png'))),
              ),
              Text(
                "Pay",
                style: whiteTextStyle.copyWith(fontSize: 14, fontWeight: ligth),
              )
            ],
          ),
          SizedBox(height: 40),
          Text(
            "Balance",
            style: whiteTextStyle.copyWith(fontSize: 14, fontWeight: ligth),
          ),
          Text(
            "IDR 280.000.000",
            style: whiteTextStyle.copyWith(fontSize: 18, fontWeight: medium),
          )
        ],
      ),
    );
  }

  Widget bonusTitle() {
    return Container(
      margin: EdgeInsets.only(top: defaultMargin * 1.5),
      child: Text(
        "Big Bonus",
        style: blackTextStyle.copyWith(fontSize: 24, fontWeight: semiBold),
      ),
    );
  }

  Widget bonusSubtitle() {
    return Container(
      margin: EdgeInsets.only(top: defaultMargin * 1.5),
      child: Text(
        "We give your ealy credit so that\nyou can buy a filght ticket",
        style: greyTextStyle.copyWith(fontSize: 16, fontWeight: ligth),
        textAlign: TextAlign.center,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            bonusCard(),
            bonusTitle(),
            bonusSubtitle(),
            SizedBox(height: 30),
            ItemButton(title: "Start Fly Now",width: 220, onPressed: (){
              Navigator.pushNamed(context, '/main');
            },),
          ],
        ),
      ),
    );
  }
}

import 'package:air_plane/style/theme.dart';
import 'package:flutter/material.dart';

import 'item_interest_detail.dart';

class ItemBooking extends StatelessWidget {
  final String title;
  final String value;
  final Color valueColor;
  const ItemBooking({Key? key, required this.title, required this.value, required this.valueColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16),
      child: Row(
        children: [
          ItemInterestDetail(facility: title),
          Text(
            value,
            style: blackTextStyle.copyWith(fontWeight: semiBold,color: valueColor),
          ),
        ],
      ),
    );
  }
}

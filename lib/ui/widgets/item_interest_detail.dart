import 'package:air_plane/style/theme.dart';
import 'package:flutter/material.dart';

class ItemInterestDetail extends StatelessWidget {
  final String facility;
  const ItemInterestDetail({Key? key, required this.facility}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Container(
            width: 16,
            height: 16,
            margin: EdgeInsets.only(right: 6),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                        "assets/icon_check.png"
                    )
                )
            ),
          ),
          Text("$facility", style:blackTextStyle)
        ],
      ),
    );
  }
}

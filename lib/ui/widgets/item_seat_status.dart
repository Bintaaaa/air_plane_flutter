import 'package:air_plane/style/theme.dart';
import 'package:flutter/material.dart';

class ItemSeatStatus extends StatelessWidget {
  final String imgUrl;
  final String status;

  const ItemSeatStatus({Key? key, required this.imgUrl, required this.status})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: defaultMargin),
      child: Expanded(
        child: Row(
          children: [
            Container(
              width: 16,
              height: 16,
              margin: EdgeInsets.only(left: 8, right: 8),
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/$imgUrl.png")),
              ),
            ),
            Text("$status")
          ],
        ),
      ),
    );
  }
}

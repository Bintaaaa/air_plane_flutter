import 'package:air_plane/style/theme.dart';
import 'package:flutter/material.dart';

class ItemSeat extends StatelessWidget {

  final int status; // 0 is available, 1 is selected, 3 is unavailable

  const ItemSeat({Key? key, required this.status}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    backgroundSeat(){
      switch(status){
        case 0:
          return kAvailable;
        case 1:
          return kPrimaryColor;
        case 2:
          return kUnavailable;
      }
    }

    return Container(
      width: 48,
      height: 48,
      margin: EdgeInsets.only(top: 16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(17),
          color: backgroundSeat()),
    );
  }
}

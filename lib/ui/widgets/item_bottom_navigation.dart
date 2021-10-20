import 'package:air_plane/style/theme.dart';
import 'package:flutter/material.dart';

class ItemBottomNavigation extends StatelessWidget {

  final String iconUrl;
  final bool isSelected;

  const ItemBottomNavigation({Key? key, required this.iconUrl, this.isSelected = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(),
        Container(
          width: 24,
          height: 24,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                      "assets/$iconUrl.png"
                  )
              )
          ),
        ),
        Container(
          width: 30,
          height: 2,
          decoration: BoxDecoration(
              color: isSelected ? kPrimaryColor : kTransparent,
              borderRadius: BorderRadius.circular(17)
          ),

        )
      ],
    );
  }
}

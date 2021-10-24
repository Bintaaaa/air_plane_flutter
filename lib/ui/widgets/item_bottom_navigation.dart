import 'package:air_plane/cubit/page_cubit.dart';
import 'package:air_plane/style/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';

class ItemBottomNavigation extends StatelessWidget {
  final String iconUrl;
  final bool isSelected;
  final int index;

  const ItemBottomNavigation(
      {Key? key, required this.iconUrl, this.isSelected = false, required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<PageCubit>().setPage(index);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(),
          Image.asset("assets/$iconUrl.png", width: 24, height: 24, color: context
              .read<PageCubit>()
              .state == index ? kPrimaryColor : kGreyColor),
          Container(
            width: 30,
            height: 2,
            decoration: BoxDecoration(
                color: context
                    .read<PageCubit>()
                    .state == index ? kPrimaryColor : kTransparent,
                borderRadius: BorderRadius.circular(17)),
          )
        ],
      ),
    );
  }
}

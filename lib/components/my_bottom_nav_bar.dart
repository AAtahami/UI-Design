import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plantation/constant.dart';

class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: kDefaultPadding,
        right: kDefaultPadding,
      ),
      height: 60,
      decoration: const BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
          offset: Offset(0, 0),
          blurRadius: 40,
          color: kPrimaryColor,
        )
      ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: SvgPicture.asset("assets/icons/flower.svg"),
            onPressed: () {},
          ),
          IconButton(
            icon: SvgPicture.asset("assets/icons/heart-icon.svg"),
            onPressed: () {},
          ),
          IconButton(
            icon: SvgPicture.asset("assets/icons/user-icon.svg"),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

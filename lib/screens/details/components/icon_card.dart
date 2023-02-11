import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plantation/constant.dart';

class IconCard extends StatelessWidget {
  const IconCard({
    Key? key,
    required this.icon,
  }) : super(key: key);
  final String icon;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height * 0.03),
      padding: const EdgeInsets.all(kDefaultPadding / 2),
      height: 60,
      width: 60,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
                offset: Offset(0, 15), color: kPrimaryColor, blurRadius: 42),
            BoxShadow(
                offset: Offset(-15, -15), color: Colors.white, blurRadius: 20),
          ]),
      child: SvgPicture.asset(icon),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plantation/constant.dart';

import 'icon_card.dart';

class DetailBody extends StatelessWidget {
  const DetailBody({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: SizedBox(
        height: size.height * 0.8,
        child: Row(
          // it would be change
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                child: Column(
              children: [
                IconButton(
                  padding:
                      const EdgeInsets.symmetric(vertical: kDefaultPadding * 4),
                  icon: SvgPicture.asset("assets/icons/back_arrow.svg"),
                  onPressed: () {},
                ),
                const Spacer(),
                const IconCard(icon: "assets/icons/sun.svg"),
                const IconCard(icon: "assets/icons/icon_2.svg"),
                const IconCard(icon: "assets/icons/icon_3.svg"),
                const IconCard(icon: "assets/icons/icon_4.svg"),
              ],
            )),
            Container(
              height: size.height * 0.8,
              width: size.width * 0.75,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(50),
                      bottomLeft: Radius.circular(50)),
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(0, 10),
                        blurRadius: 50,
                        color: kPrimaryColor.withOpacity(0.5))
                  ],
                  image: const DecorationImage(
                      alignment: Alignment.centerLeft,
                      image: AssetImage("assets/images/image.png"),
                      fit: BoxFit.cover)),
              //color: Colors.amber,
            ),
          ],
        ),
      ),
    );
  }
}

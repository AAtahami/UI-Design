import 'package:flutter/material.dart';
import 'package:plantation/constant.dart';

class FeaturedPants extends StatelessWidget {
  const FeaturedPants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FeaturedPlantCard(
            image: "assets/images/bottom_img_1.png",
            onPress: () {},
          ),
          FeaturedPlantCard(
            image: "assets/images/bottom_img_2.png",
            onPress: () {},
          ),
          FeaturedPlantCard(
            image: "assets/images/bottom_img_1.png",
            onPress: () {},
          ),
        ],
      ),
    );
  }
}

class FeaturedPlantCard extends StatelessWidget {
  FeaturedPlantCard({Key? key, required this.image, onPress}) : super(key: key);
  final String image;
  var onPress;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: const EdgeInsets.only(
            left: kDefaultPadding / 2,
            right: kDefaultPadding / 2,
            top: kDefaultPadding / 2,
            bottom: kDefaultPadding / 2),
        width: size.width * 0.8,
        height: 190,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image:
                DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
      ),
    );
  }
}

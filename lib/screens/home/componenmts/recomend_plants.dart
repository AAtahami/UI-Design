import 'package:flutter/material.dart';
import 'package:plantation/constant.dart';
import 'package:plantation/screens/details/details_screen.dart';

class RecomendsPlants extends StatelessWidget {
  const RecomendsPlants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecomendedPlantCard(
            image: "assets/images/image_1.png",
            title: "Samantha",
            country: "Russia",
            price: 400,
            onPress: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const DetailsScreen()),
              );
              //print("yes Show");
            },
          ),
          RecomendedPlantCard(
            image: "assets/images/image_2.png",
            title: "Angelica",
            country: "Russia",
            price: 400,
            onPress: () {},
          ),
          RecomendedPlantCard(
            image: "assets/images/image_3.png",
            title: "Samantha",
            country: "Russia",
            price: 400,
            onPress: () {},
          ),
          RecomendedPlantCard(
            image: "assets/images/image_1.png",
            title: "Samantha",
            country: "Russia",
            price: 400,
            onPress: () {},
          ),
        ],
      ),
    );
  }
}

class RecomendedPlantCard extends StatelessWidget {
  RecomendedPlantCard(
      {Key? key,
      required this.image,
      required this.title,
      required this.country,
      required this.price,
      this.onPress})
      : super(key: key);

  final String image, title, country;
  final int price;
  var onPress;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: const EdgeInsets.only(
          left: kDefaultPadding / 2,
          right: kDefaultPadding / 2.5,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding * 2.5,
        ),
        width: size.width * 0.43,
        child: Column(
          children: [
            Image.asset(image),
            Container(
              padding: const EdgeInsets.all(kDefaultPadding / 2),
              decoration: const BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                  offset: Offset(0, 5),
                  blurRadius: 45,
                  color: kPrimaryColor,
                )
              ]),
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                      text: "$title \n".toUpperCase(),
                      style: Theme.of(context).textTheme.button,
                    ),
                    TextSpan(
                        text: country,
                        style: TextStyle(
                          color: kPrimaryColor.withOpacity(0.7),
                        ))
                  ])),
                  const Spacer(),
                  Text(
                    "\$$price",
                    style: Theme.of(context)
                        .textTheme
                        .button!
                        .copyWith(color: kPrimaryColor),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

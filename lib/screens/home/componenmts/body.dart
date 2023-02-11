import 'package:flutter/material.dart';
import 'package:plantation/constant.dart';
import 'featured_plants.dart';
import 'header_with_searchbox.dart';
import 'recomend_plants.dart';
import 'title_with_more_btn.dart';

class body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderWithSearchBox(size: size),
            const SizedBox(
              height: 20,
            ),
            TitleWithMoreBtn(
              title: 'Recomended',
              press: () {},
            ),
            const RecomendsPlants(),
            TitleWithMoreBtn(
              title: 'Featured Plants',
              press: () {},
            ),
            const FeaturedPants(),
            const SizedBox(
              height: kDefaultPadding,
            ),
          ],
        ),
      ),
    );
  }
}

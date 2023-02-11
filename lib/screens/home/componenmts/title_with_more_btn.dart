import 'package:flutter/material.dart';
import 'package:plantation/constant.dart';

class TitleWithMoreBtn extends StatelessWidget {
  const TitleWithMoreBtn({
    Key? key,
    required this.title,
    required this.press,
  }) : super(key: key);
  final String title;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: kDefaultPadding,
        right: kDefaultPadding,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          //Positioned(left: 0, right: 0, bottom: 0, child: Text("data"))
          MaterialButton(
            textColor: Colors.white,
            color: kPrimaryColor,
            elevation: 10,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            child: const Text("More"),
            onPressed: () async {},
          ),
        ],
      ),
    );
  }
}

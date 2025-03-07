
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../size_config.dart';
import 'constant.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Hi, Monica!",
          style: TextStyle(
            color: kPrimaryColor,
            fontSize: getProportionateScreenWidth(22),
          ),
        ),
        SizedBox(height: getProportionateScreenHeight(6)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Current location",
              style: TextStyle(
                color: kSecondaryTextColor,
                fontSize: getProportionateScreenWidth(12),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: getProportionateScreenWidth(30)),
              child: SvgPicture.asset("assets/icons/play.svg"),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SvgPicture.asset("assets/icons/location.svg"),
                SizedBox(width: getProportionateScreenWidth(2)),
                Text(
                  "Hyderabad",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(12),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(width: getProportionateScreenWidth(3)),
                Icon(Icons.arrow_drop_down,color: Colors.grey,)
              ],
            ),
            Text("How it works?",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(10)))
          ],
        ),
      ],
    );
  }
}


import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:flutter/material.dart';

import '../../../constant.dart';
import '../../../size_config.dart';

class CouponBanner extends StatelessWidget {
  const CouponBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24),
      child: Container(
        width: SizeConfig.screenWidth * 0.9,
        decoration: BoxDecoration(
            borderRadius:
                BorderRadius.circular(getProportionateScreenWidth(10)),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFF7915DE), // #7915DE in hex
                Color(0xFF260C40), // #260C40 in hex
              ],
              stops: [0.0178, 1.6445], // Corresponding to the 1.78% and 164.45%
            ),

            ),

    child: Row(
    children: [
    // Left side content (Text, Promo code)
    Expanded(

    child: Padding(
      padding: const EdgeInsets.only(left: 15,top: 20),
      child: Column(
       crossAxisAlignment: CrossAxisAlignment.start,
        children: [
      Text(

      'Enjoy your first order, the taste of our delicious food!',
      style: TextStyle(
      color: Colors.white,
      fontSize: 18.0,
        fontWeight: FontWeight.bold,// Adjust font size as needed

      ),
      ),
      SizedBox(height: 10.0), // Spacing between text and promo code
        Container(
            decoration: DottedDecoration(shape: Shape.box),
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(22),
                  vertical: getProportionateScreenHeight(8)),
              child: Text(
                "FIRSTPLATE01",
                style: TextStyle(
                    color: const Color(0xFFF7E5B7),
                    fontSize: getProportionateScreenWidth(13)),
              ),
            ))
      ],
      ),
    ),
    ),
    // Right side image
    Padding(
      padding: const EdgeInsets.only(top: 13),
      child: Image.asset(
      "assets/images/Cooking.png", // Replace with the actual path
      width: getProportionateScreenWidth(150), // Adjust size as needed
      fit: BoxFit.contain,
      ),
    ),
    ],
    ),
    ),
    );
  }
}

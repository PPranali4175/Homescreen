import 'package:assignment_2/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'constant.dart';

class MenuCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.only(
              left: getProportionateScreenWidth(24),
              top: getProportionateScreenHeight(5),
              right: getProportionateScreenWidth(7),
              bottom: getProportionateScreenWidth(5)),
          child: menuBox(),
        ),

      ],
    );
  }

  SingleChildScrollView menuBox() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
            width: getProportionateScreenWidth(160), // Container width
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
              border: Border.all(
                color: kSecondaryTextColor.withOpacity(0.2),
                width: 1.0,
              ),
              boxShadow: [
                BoxShadow(
                  color: kSecondaryTextColor.withOpacity(0.1),
                  spreadRadius: 2,
                  blurRadius: 2,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(7), // Same as the container's border radius
              child: Image.asset(
                'assets/images/Meal Boxes.png', // Replace with your image path
                fit: BoxFit.cover, // Ensures the image covers the entire container
                width: double.infinity,
                height: double.infinity,
              ),
            ),
          ),
          SizedBox(width: 8,),
          Container(
            width: getProportionateScreenWidth(163), // Container width
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
              border: Border.all(
                color: kSecondaryTextColor.withOpacity(0.2),
                width: 1.0,
              ),
              boxShadow: [
                BoxShadow(
                  color: kSecondaryTextColor.withOpacity(0.1),
                  spreadRadius: 2,
                  blurRadius: 2,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(9), // Same as the container's border radius
              child: Image.asset(
                'assets/images/Meal Boxes (1).png', // Replace with your image path
                fit: BoxFit.cover, // Ensures the image covers the entire container
                width: double.infinity,
                height: double.infinity,
              ),
            ),
          ),
        ],
      ),
    );

  }
}

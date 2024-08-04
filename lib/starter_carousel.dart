import 'package:flutter/material.dart';

import '../../../constant.dart';
import '../../../size_config.dart';

class Starter extends StatelessWidget {
  const Starter({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, "/otpscreen");
      },
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 2.5,
        shadowColor: kSecondaryTextColor.withOpacity(0.2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  height: getProportionateScreenHeight(125),
                  width: getProportionateScreenWidth(180),
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/Meal Box (1).png",))),
                ),
                SizedBox(width: 8,),
                Container(
                  height: getProportionateScreenHeight(125),
                  width: getProportionateScreenWidth(180),
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/Meal Box (2).png",))),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}

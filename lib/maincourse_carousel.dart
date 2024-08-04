import 'package:flutter/material.dart';

import '../../../constant.dart';
import '../../../size_config.dart';


class MainCourse extends StatelessWidget {
  const MainCourse({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 2.5,
      shadowColor: kSecondaryTextColor.withOpacity(0.2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: getProportionateScreenHeight(150),
            width: getProportionateScreenWidth(310),
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/Frame 1000004851.png"))),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
             mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset('assets/images/Universal Icons - Veg, Non-Veg and Eggetarian.png'),
                SizedBox(width: 5,),
                Text("Panjabi Special Menu",style: TextStyle(fontWeight: FontWeight.bold),)


              ],
            ),
          ),

          Image.asset('assets/images/Line 1.png',color: Colors.grey),
          SizedBox(height: 6,),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("6 Categories & 9 Items",style: TextStyle(color: Colors.deepPurple,fontSize: 14
                ),),
                SizedBox(width: 80,),
                Text(
                  "See all",
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: getProportionateScreenWidth(12)),
                )
              ],
            ),
          ),
          SizedBox(height: 7,),
          Image.asset('assets/images/Line 1.png',color: Colors.grey),
          SizedBox(height: 7,),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Image.asset('assets/images/Frame 1000004958.png'),
          ),

        ],
      ),
    );
  }
}

//  decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(10),
//             border: Border.all(
//                 width: 1.0, color: kSecondaryTextColor.withOpacity(0.1)),
//             color: kSecondaryColor,
//             boxShadow: [
//               BoxShadow(
//                 color: kSecondaryTextColor.withOpacity(0.1),
//                 spreadRadius: 1,
//                 blurRadius: 2,
//                 offset: const Offset(0, 2),
//               ),
//             ]),
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
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Starts at',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(width: 5,),
                    Text("₹299",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                    Row(
                      children: [
                        SizedBox(width: 90,),
                        Icon(Icons.person, color: Colors.grey, size: 16),
                        SizedBox(width: 4),
                        Text(
                          '10 - 600',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 4),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Icon(Icons.star, color: Colors.yellow, size: 16),
                    SizedBox(width: 4),
                    Text(
                      '₹219',
                      style: TextStyle(
                        color: Colors.purple,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text("/ Person",style: TextStyle(color: Colors.grey),),
                    SizedBox(width: 8),
                    Icon(Icons.arrow_downward, color: Colors.green,size: 16,),
                    Text(
                      '20%',
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 4),
                Row(
                  children: [
                    Text(
                      'with Dynamic Price For',
                      style: TextStyle(
                        color: Colors.purple,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(width: 5,),
                    Text("100 Guests",style: TextStyle(color: Colors.black),)
                  ],
                ),

              ],
            ),
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
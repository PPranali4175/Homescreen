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
              gradient: LinearGradient(
                colors: [
                  Color(0xFFE1E1F5), // Light deep purple
                  Color(0xFFB8B8C8), // Dark deep purple
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
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
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 9.0,top: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text("Meal Boxes",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
                              SizedBox(width: 20,),
                              Container(
                                width: 30.0,
                                height: 30.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFF4B0082), // Deep purple color
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(
                                  Icons.arrow_forward, // White arrow icon
                                  color: Colors.white,
                                  size: 20.0, // Size of the arrow icon
                                ),
                              ),
                            ],
                          ),

                          Row(
                            children: [
                              Icon(Icons.person,color: Colors.deepPurple,),
                              Text(
                                'Min 10 Guests',
                                style: TextStyle(fontSize: 12.0,color: Color(0xFF6A0D91),),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
                SizedBox(height: 25,),
                ClipRRect(

                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(17.0), // Adjust the radius as needed
                    bottomRight: Radius.circular(17.0), // Adjust the radius as needed
                  ),
                  child: Image.asset(
                    'assets/images/Mask group (1).png',
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 8,),
          Container(
            width: getProportionateScreenWidth(160), // Container width
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              gradient: LinearGradient(
                colors: [
                  Color(0xFFF0CCF0),
                  Color(0xFFD291BC),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
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
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 9.0,top: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text("Catering",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
                              SizedBox(width: 40,),
                              Container(
                                width: 30.0,
                                height: 30.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFFC2185B), // Deep purple color
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(
                                  Icons.arrow_forward, // White arrow icon
                                  color: Colors.white,
                                  size: 20.0, // Size of the arrow icon
                                ),
                              ),
                            ],
                          ),

                          Row(
                            children: [
                              Icon(Icons.person,color: Colors.pink,),
                              Text(
                                'Min 120 Guests',
                                style: TextStyle(fontSize: 12.0,color: Color(0xFFC2185B),),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                  ],
                ),

                ClipRRect(

                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(17.0), // Adjust the radius as needed
                    bottomRight: Radius.circular(17.0), // Adjust the radius as needed
                  ),
                  child: Image.asset(
                    'assets/images/Clip path group (2).png',
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );

  }
}

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
                Stack(
                  children: [Container(

                    height: getProportionateScreenHeight(125),
                    width: getProportionateScreenWidth(180),
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFFF0CCF0),
                          Color(0xFFD291BC),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                        ),
                    child: Row(
                      children: [
                        SizedBox(width: 12,),
                        ClipRRect(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(12.0), // Adjust the radius as needed
                              bottomRight: Radius.circular(12.0), // Adjust the radius as needed
                            ),
                            child: Image.asset('assets/images/Mask group (4).png')),
                        
                      ],
                    ),
                    
                  ),
                    Column(
                      children: [
                        SizedBox(height: 83,),
                    Container(
                    padding: EdgeInsets.all(3.0),
      decoration: BoxDecoration(
        color: Colors.deepPurple, // Background color
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(5.0), // Top-right corner
          bottomRight: Radius.circular(5.0), // Bottom-right corner
        ), // Rounded corners
      ),
      child: Center(
        child: Text(
          '3 Items Box',
          style: TextStyle(
            color: Colors.white, // Text color
            fontSize: 15.0, // Font size
          ),
        ),
      ),
    ),


    ],
                    )
      ],
                ),
                SizedBox(width: 8,),
                Stack(
                  children: [Container(

                    height: getProportionateScreenHeight(125),
                    width: getProportionateScreenWidth(180),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFFD4C1FC),
                          Color(0xFF957EC7),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 35,),
                        ClipRRect(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(12.0), // Adjust the radius as needed
                              bottomRight: Radius.circular(12.0), // Adjust the radius as needed
                            ),
                            child: Image.asset('assets/images/Mask group (5).png')),

                      ],
                    ),

                  ),
                    Column(
                      children: [
                        SizedBox(height: 83,),
                        Container(
                          padding: EdgeInsets.all(3.0),
                          decoration: BoxDecoration(
                            color: Colors.deepPurple, // Background color
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(5.0), // Top-right corner
                              bottomRight: Radius.circular(5.0), // Bottom-right corner
                            ), // Rounded corners
                          ),
                          child: Center(
                            child: Text(
                              '5 Items Box',
                              style: TextStyle(
                                color: Colors.white, // Text color
                                fontSize: 15.0, // Font size
                              ),
                            ),
                          ),
                        ),


                      ],
                    )
                  ],
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}

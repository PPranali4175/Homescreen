
import 'package:assignment_2/searchbar.dart';
import 'package:assignment_2/selectplatters.dart';
import 'package:assignment_2/servicecard.dart';
import 'package:assignment_2/size_config.dart';
import 'package:assignment_2/starter_carousel.dart';
import 'package:flutter/material.dart';


import 'bottomnavigationbar.dart';
import 'constant.dart';
import 'couponbanner.dart';
import 'featuresection.dart';
import 'homeheader.dart';
import 'maincourse2.dart';
import 'maincourse_carousel.dart';
import 'menucard.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final List<String> topcategories = [
    'Starters',
    'Drinks',
    'Rice',
    'Cury',
    'Desert',
  ];

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    // Add navigation logic here if needed
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(24),
                vertical: getProportionateScreenWidth(6)),
            child: const HomeHeader(),
          ),
          SizedBox(height: getProportionateScreenHeight(10)),
          SizedBox(
            height: getProportionateScreenHeight(150),
            child: ListView.builder(
                itemCount: 3,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return const CouponBanner();
                }),
          ),
          SizedBox(height: getProportionateScreenHeight(23)),
          Padding(
            padding: const EdgeInsets.only(left: 24.0),
            child: Text("Start crafting",
                style: TextStyle(
                    fontSize: getProportionateScreenWidth(20),
                    color: Colors.black)),
          ),
          SizedBox(height: getProportionateScreenHeight(10)),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(16),
                vertical: getProportionateScreenHeight(3)),
               child: SelectPlatters()


          ),
          SizedBox(height: getProportionateScreenHeight(4)),
          SizedBox(
            height: getProportionateScreenHeight(220),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  MenuCard(),

                ],
              ),
            ),
          ),
            SizedBox(height: 20,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(24)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Choose Your Platter",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 20))

              ],
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: EdgeInsets.only(left: getProportionateScreenWidth(23)),
            child: SizedBox(
              height: getProportionateScreenHeight(133),
              child: ListView.builder(
                itemCount: 3,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                    EdgeInsets.only(right: getProportionateScreenWidth(12)),
                    child: const Starter(),
                  );
                },
              ),
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(24)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset("assets/images/Frame 1000004854.png"),
                    SizedBox(height: 7,),
                    Text("Best for small gatherings and house-parties",style: TextStyle(color: Colors.grey),)
                  ],
                ),
                Text(
                  "More",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: getProportionateScreenWidth(12)),
                )
              ],
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: EdgeInsets.only(
                left: getProportionateScreenWidth(24),
                bottom: getProportionateScreenHeight(10)),
            child: SizedBox(
              height: getProportionateScreenHeight(310),
              child: ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                    EdgeInsets.only(right: getProportionateScreenWidth(12)),
                    child: const MainCourse(),
                  );
                },
              ),
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(24)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset("assets/images/Frame 1000004848.png"),
                    SizedBox(height: 7,),
                    Text("Individually packed meal boxes of happiness!",style: TextStyle(color: Colors.grey),)
                  ],
                ),
                Text(
                  "More",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: getProportionateScreenWidth(12)),
                )
              ],
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(22)),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(24)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset("assets/images/Frame 1000004854 (1).png"),
                    SizedBox(height: 7,),
                    Text("Best for weddings, Corporate Events, Birthdays etc",style: TextStyle(color: Colors.grey),)
                  ],
                ),

              ],
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(22)),
          Padding(
            padding: EdgeInsets.only(
                left: getProportionateScreenWidth(24),
                bottom: getProportionateScreenHeight(10)),
            child: SizedBox(
              height: getProportionateScreenHeight(310),
              child: ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                    EdgeInsets.only(right: getProportionateScreenWidth(12)),
                    child: const MainCourse2(),
                  );
                },
              ),
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(30)),
          Padding(
            padding: const EdgeInsets.only(left: 75.0,),
            child: Text("   <---- You Customize, We Cater! ---->",style: TextStyle(color: Colors.grey),),
          ),
          SizedBox(height: getProportionateScreenHeight(30)),

        ],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }

  Padding SubHeading(String subhead) {
    return Padding(
      padding: EdgeInsets.only(
          top: getProportionateScreenHeight(12),
          bottom: getProportionateScreenHeight(10)),
      child: Text(
        subhead,
        style: TextStyle(fontSize: getProportionateScreenWidth(18)),
      ),
    );
  }

  SizedBox TopCategory() {
    return SizedBox(
      height: getProportionateScreenHeight(100), // Set the height here
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: topcategories.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(left: getProportionateScreenWidth(24)),
            child: Column(
              children: [
                Image.asset(
                  "assets/images/category${index + 1}.png",
                  height: getProportionateScreenHeight(70),
                ),
                SizedBox(height: getProportionateScreenHeight(4)),
                Text(
                  topcategories[index],
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(12),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({Key? key}) : super(key: key);

  @override
  State<CustomBottomNavigationBar> createState() => _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  bool _isSecondIconChanged = false;
  @override
  Widget build(BuildContext context) {
    final double containerHeight = 70.0; // Set the container height

    return BottomAppBar(

      color: CupertinoColors.white, // Set to transparent to avoid double color
      child: Container(
        height: containerHeight, // Height of the bottom navigation bar
        width: 200.0, // Width of the circular rectangle
        margin: EdgeInsets.only(bottom: 10.0,left: 40,right: 40), // Optional margin from bottom
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: Colors.white, // Background color of the circular rectangle
          boxShadow: [ // Optional shadow for better visibility

          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center, // Center the row items
          children: <Widget>[
        Column(
          children: [
            SizedBox(height: 15,),
            Material(
            shape: CircleBorder(), // Make sure the material has a circular shape
             color: Colors.grey,// Background color of the circle
            child: InkWell(
              customBorder: CircleBorder(), // For ripple effect within the circle
              onTap: () {
                // Handle icon tap
              },
              child: Container(
                width: 35, // Diameter of the circle
                height: 35,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.grey, // Border color
                    width: 2, // Border width
                  ),
                ),
                alignment: Alignment.center,
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                  size: 30, // Size of the icon
                ),
              ),
            ),
      ),
            Text("Profile",style: TextStyle(color: Colors.grey),)
          ],
        ),


            SizedBox(width: 6), // Space between first and second icon
            Stack(
              children: [
                IconButton(
                  icon: Image.asset(
                    _isSecondIconChanged
                        ? 'assets/images/img.png' // New icon path
                        : 'assets/images/Logo@2x.png', // Original icon path
                    height: containerHeight, // Match icon height to container height
                    width: containerHeight, // Match icon width to container height
                  ),
                  iconSize: containerHeight,
                  onPressed: () {
                    // Handle second icon tap
                  },
                ),
                if (_isSecondIconChanged)
                  Positioned(
                    right: 0,
                    child: Container(
                      padding: EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      constraints: BoxConstraints(
                        minWidth: 18,
                        minHeight: 18,
                      ),
                      child: Text(
                        '2',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
              ],
            ),
            SizedBox(width: 6), // Space between second and third icon
            Column(
              children: [
                SizedBox(height: 15,),
                Material(
                  shape: CircleBorder(), // Make sure the material has a circular shape
                  color: Colors.white,// Background color of the circle
                  child: InkWell(
                    customBorder: CircleBorder(), // For ripple effect within the circle
                    onTap: () {
                      setState(() {
                        _isSecondIconChanged = !_isSecondIconChanged; // Toggle the state
                      });

                      // Handle icon tap
                    },
                    child: Container(
                      width: 35, // Diameter of the circle
                      height: 35,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.grey, // Border color
                          width: 2, // Border width
                        ),
                      ),
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.restaurant,
                        color: Colors.grey,
                        size: 20, // Size of the icon
                      ),
                    ),
                  ),
                ),
                Text("Orders",style: TextStyle(color: Colors.grey),)
              ],
            ),
          ],
        ),
      ),
    );
  }
}

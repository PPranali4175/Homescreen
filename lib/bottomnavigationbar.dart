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
            IconButton(
              icon: Image.asset(
                'assets/images/Frame 8.png', // Replace with your image path
                height: containerHeight, // Match icon height to container height
                width: containerHeight, // Match icon width to container height
              ),
              iconSize: containerHeight,
              onPressed: () {
                // Handle profile icon tap
              },
            ),
            SizedBox(width: 5), // Space between first and second icon
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
            SizedBox(width: 5), // Space between second and third icon
            IconButton(
              icon: Image.asset(
                'assets/images/Frame 5.png', // Replace with your image path
                height: containerHeight, // Match icon height to container height
                width: containerHeight, // Match icon width to container height
              ),
              iconSize: containerHeight, // Ensures the IconButton matches the size
              onPressed: () {
                setState(() {
                  _isSecondIconChanged = !_isSecondIconChanged; // Toggle the state
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}

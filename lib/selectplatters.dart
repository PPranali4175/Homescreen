import 'package:flutter/material.dart';

class SelectPlatters extends StatefulWidget {
  const SelectPlatters({super.key});

  @override
  State<SelectPlatters> createState() => _SelectPlattersState();
}

class _SelectPlattersState extends State<SelectPlatters> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // Adjust as needed
      padding: EdgeInsets.all(16.0), // Padding inside the container
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0), // Rounded corners
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFFE2BA73), // Light orange/yellow color
            Color(0xFFF2E3B5), // Lighter color at the bottom right
          ],
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Left side content
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Delivery Box',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0, // Adjust font size as needed
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 4.0), // Spacing between title and subtitle
                Row(
                  children: [
                    Icon(Icons.person),

                    Text(
                      'Min 10 - Max 120',
                      style: TextStyle(fontSize: 12.0,color: Color(0xFFD77A29),),
                    ),
                  ],
                ),
                SizedBox(height: 27.0), // Spacing between text and button
                ElevatedButton.icon(
                  onPressed: () {
                    // Button action
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFFD77A29), // Button color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                  ),
                  icon: Icon(Icons.arrow_forward),
                  label: Text('See All'),
                ),
              ],
            ),
          ),

          // Right side image
          ClipRRect(

            borderRadius: BorderRadius.circular(16.0), // Match container's border radius
            child: Image.asset(

              "Clip path group.png", // Replace with the actual path to the image
              width: 200.0, // Adjust size as needed
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );

  }
}

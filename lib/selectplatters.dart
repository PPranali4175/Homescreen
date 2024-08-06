import 'package:flutter/material.dart';

class SelectPlatters extends StatefulWidget {
  const SelectPlatters({super.key});

  @override
  State<SelectPlatters> createState() => _SelectPlattersState();
}

class _SelectPlattersState extends State<SelectPlatters> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0,right: 8.0),
      child: Container(
        // Adjust as needed
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0), // Rounded corners
          gradient: const LinearGradient(
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
            Padding(
              padding: const EdgeInsets.fromLTRB(17.0, 16.0, 0.0, 16.0),
              child: Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Delivery Box',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0, // Adjust font size as needed
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4.0), // Spacing between title and subtitle
                    const Row(
                      children: [
                        Icon(Icons.person,color: Color(0xFFD77A29),),

                        Text(
                          'Min 10 - Max 120',
                          style: TextStyle(fontSize: 12.0,color: Color(0xFFD77A29),),
                        ),
                      ],
                    ),
                    const SizedBox(height: 27.0), // Spacing between text and button
                    ElevatedButton(
                      onPressed: () {
                        // Button action
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFFD77A29), // Button color
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                      ),
                      child: Row(
                        children: [
                          Text('See all'),
                          Icon(Icons.arrow_forward),
                        ],
                      ), // Text label
                       // Icon
                    ),
                  ],
                ),
              ),
            ),

            // Right side image
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 0.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16.0), // Match container's border radius
                child: Image.asset(
                  "assets/images/Clip path group (1).png", // Replace with the actual path to the image
                  width: 210.0, // Adjust size as needed
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
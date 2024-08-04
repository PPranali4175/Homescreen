import 'dart:ffi';

import 'package:flutter/material.dart';

import '../../../constant.dart';
import '../../../size_config.dart';

class SelectPlatters extends StatelessWidget {
  const SelectPlatters({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // Adjust as needed
      padding: EdgeInsets.all(12.0), // Padding inside the container
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0), // Rounded corners
        
      ),
      child: Image.asset('assets/images/Meal Box.png',fit: BoxFit.cover,),

    );

  }
}

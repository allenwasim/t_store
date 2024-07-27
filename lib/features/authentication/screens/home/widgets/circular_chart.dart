import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'dart:ui';

import 'package:t_store/utils/helpers/helper_functions.dart';

// CircularChart widget
class CircularChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Container(
      padding: EdgeInsets.all(16),
      height: 300,
      width: 300,
      child: Stack(
        alignment: Alignment.center,
        children: [
          // Outer circle (Fats)
          Positioned.fill(
            child: CircularProgressIndicator(
              value: 0.7,
              backgroundColor: Colors.grey.shade200,
              valueColor: AlwaysStoppedAnimation<Color>(Colors.redAccent),
              strokeWidth: 20,
            ),
          ),
          // Middle circle (Proteins)
          Positioned.fill(
            child: CircularProgressIndicator(
              value: 0.4,
              backgroundColor: Colors.transparent,
              valueColor: AlwaysStoppedAnimation<Color>(Colors.orangeAccent),
              strokeWidth: 20,
            ),
          ),
          // Inner circle (Carbs)
          Positioned.fill(
            child: CircularProgressIndicator(
              value: 0.3,
              backgroundColor: Colors.transparent,
              valueColor: AlwaysStoppedAnimation<Color>(Colors.greenAccent),
              strokeWidth: 20,
            ),
          ),
          // Center text
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '1300',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: dark ? TColors.white : TColors.black,
                ),
              ),
              Text(
                'Kcal Gained',
                style: TextStyle(
                  fontSize: 13,
                  color: dark ? TColors.light : TColors.darkGrey,
                ),
              ),
            ],
          ),
          // Percentage labels
          Positioned(
            top: 30,
            child: Column(
              children: [
                Icon(Icons.circle, color: Colors.redAccent, size: 14),
                Text(
                  '70%',
                  style: TextStyle(color: Colors.redAccent),
                ),
                Text(
                  'Fats',
                  style: TextStyle(color: Colors.redAccent),
                ),
              ],
            ),
          ),
          Positioned(
            top: 100,
            right: 30,
            child: Column(
              children: [
                Icon(Icons.circle, color: Colors.orangeAccent, size: 14),
                Text(
                  '40%',
                  style: TextStyle(color: Colors.orangeAccent),
                ),
                Text(
                  'Proteins',
                  style: TextStyle(color: Colors.orangeAccent),
                ),
              ],
            ),
          ),
          Positioned(
            top: 170,
            child: Column(
              children: [
                Icon(Icons.circle, color: Colors.greenAccent, size: 14),
                Text(
                  '30%',
                  style: TextStyle(color: Colors.greenAccent),
                ),
                Text(
                  'Carbs',
                  style: TextStyle(color: Colors.greenAccent),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

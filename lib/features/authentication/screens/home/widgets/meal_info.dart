import 'dart:ui';

import 'package:flutter/material.dart';

class MealInfo extends StatelessWidget {
  final String meal;
  final int calories;
  final String range;
  final Color color;

  MealInfo({
    required this.meal,
    required this.calories,
    required this.range,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: color.withOpacity(
            0.9), // Use the color with opacity for a lighter background
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            meal,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                '$calories Kcal',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(range),
            ],
          ),
        ],
      ),
    );
  }
}

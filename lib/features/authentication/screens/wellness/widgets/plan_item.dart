import 'dart:ui';

import 'package:flutter/material.dart';

class PlanItem extends StatelessWidget {
  final String image;
  final String activity;
  final String duration;

  PlanItem(
      {required this.image, required this.activity, required this.duration});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      elevation: 0,
      child: ListTile(
        leading: Image.asset(image,
            width: 70, height: 70, fit: BoxFit.cover), // Increased size
        title: Text(activity,
            style: TextStyle(fontSize: 20)), // Increased font size
        subtitle: Text(duration,
            style: TextStyle(fontSize: 16)), // Increased font size
      ),
    );
  }
}

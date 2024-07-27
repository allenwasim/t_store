import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:t_store/constants/colors.dart';
import 'package:t_store/features/authentication/screens/wellness/widgets/category_card.dart';
import 'package:t_store/features/authentication/screens/wellness/widgets/plan_item.dart';
import 'package:t_store/utils/constants/sizes.dart';

class WellnessScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Wellness",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Workouts',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Featured categories',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CategoryCard(
                  icon: Icons.self_improvement,
                  label: 'Yoga',
                  onTap: () {},
                ),
                CategoryCard(
                  icon: Icons.fitness_center,
                  label: 'Gym',
                  onTap: () {},
                ),
                CategoryCard(
                  icon: Icons.directions_run,
                  label: 'Fitness',
                  onTap: () {},
                ),
                CategoryCard(
                  icon: Icons.directions_walk,
                  label: 'Run',
                  onTap: () {},
                ),
              ],
            ),
            SizedBox(height: 16),
            Text(
              'Today plan',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            PlanItem(
              image: 'assets/images/content/running-track-1667904802.avif',
              activity: '5 km running',
              duration: '42 minutes',
            ),
            PlanItem(
              image: 'assets/images/content/Yoga-for-weight-loss.avif',
              activity: 'Yoga warm-up',
              duration: '12 minutes',
            ),
          ],
        ),
      ),
    );
  }
}

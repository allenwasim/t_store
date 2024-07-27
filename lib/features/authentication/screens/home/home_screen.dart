import 'package:flutter/material.dart';
import 'package:t_store/constants/colors.dart';
import 'package:t_store/features/authentication/screens/home/widgets/balance_nutrition.dart';
import 'package:t_store/features/authentication/screens/home/widgets/meal_info.dart';
import 'package:t_store/features/authentication/screens/home/widgets/user_profile.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Dopamine',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              UserProfile(),
              SizedBox(height: 20),
              BalanceNutrition(),
              SizedBox(height: 20),
              MealInfo(
                meal: 'Breakfast',
                calories: 340,
                range: '250-400 Kcal',
                color: Colors.red,
              ),
              SizedBox(height: 10),
              MealInfo(
                meal: 'Lunch',
                calories: 400,
                range: '400-600 Kcal',
                color: Colors.orange,
              ),
              SizedBox(height: 10),
              MealInfo(
                meal: 'Dinner',
                calories: 400,
                range: '400-600 Kcal',
                color: Colors.blue,
              ),
              SizedBox(height: 10),
              MealInfo(
                meal: 'Scanck',
                calories: 400,
                range: '400-600 Kcal',
                color: Colors.green,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

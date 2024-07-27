import 'package:flutter/material.dart';
import 'package:t_store/features/authentication/screens/home/widgets/circular_chart.dart';

class BalanceNutrition extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Balances Nutrition',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          ToggleButtons(
            borderRadius: BorderRadius.circular(10),
            isSelected: [true, false, false, false],
            onPressed: (int index) {},
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text('Today'),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text('Week'),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text('Month'),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text('6 Month'),
              ),
            ],
          ),
          SizedBox(height: 30),
          Center(child: CircularChart()),
        ],
      ),
    );
  }
}

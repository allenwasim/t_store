import 'package:flutter/material.dart';

void main() {
  runApp(FitnessApp());
}

class FitnessApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TrainerListScreen(),
    );
  }
}

class Trainer {
  final String name;
  final String specialty;
  final double cost;
  final String description;

  Trainer({
    required this.name,
    required this.specialty,
    required this.cost,
    required this.description,
  });
}

class TrainerListScreen extends StatelessWidget {
  final List<Trainer> trainers = [
    Trainer(
      name: 'John Doe',
      specialty: 'Yoga',
      cost: 50.0,
      description:
          'Expert in Hatha and Vinyasa Yoga with 10 years of experience.',
    ),
    Trainer(
      name: 'Jane Smith',
      specialty: 'Cardio',
      cost: 40.0,
      description:
          'Certified Cardio trainer with a focus on HIIT and endurance training.',
    ),
    Trainer(
      name: 'Mike Johnson',
      specialty: 'Strength Training',
      cost: 60.0,
      description:
          'Professional bodybuilder and strength coach with 15 years of experience.',
    ),
    Trainer(
      name: 'Emily Davis',
      specialty: 'Pilates',
      cost: 55.0,
      description:
          'Pilates instructor specializing in core strength and flexibility.',
    ),
    Trainer(
      name: 'Chris Lee',
      specialty: 'CrossFit',
      cost: 70.0,
      description: 'CrossFit coach with a background in competitive athletics.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Available Trainers'),
      ),
      body: ListView.builder(
        itemCount: trainers.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(10.0),
            child: ListTile(
              contentPadding: EdgeInsets.all(10.0),
              title: Text(trainers[index].name,
                  style:
                      TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      '${trainers[index].specialty} - \$${trainers[index].cost}/month',
                      style: TextStyle(fontSize: 16.0)),
                  SizedBox(height: 5.0),
                  Text(trainers[index].description,
                      style: TextStyle(fontSize: 14.0)),
                ],
              ),
              trailing: ElevatedButton(
                onPressed: () {
                  // Handle membership selection
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Selected ${trainers[index].name}')),
                  );
                },
                child: Text('Select'),
              ),
            ),
          );
        },
      ),
    );
  }
}

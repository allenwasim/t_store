import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: <Widget>[
          Center(
            child: CircleAvatar(
              radius: 50, // Adjust the radius as needed
            ),
          ),
          SizedBox(height: 10),
          Center(
              child: Text('allenwasimk@gmail.com',
                  style: TextStyle(fontSize: 18))),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text('2h 30m', style: TextStyle(fontSize: 16)),
                  Text('Total time', style: TextStyle(fontSize: 14)),
                ],
              ),
              Column(
                children: <Widget>[
                  Text('7200 cal', style: TextStyle(fontSize: 16)),
                  Text('Burned', style: TextStyle(fontSize: 14)),
                ],
              ),
              Column(
                children: <Widget>[
                  Text('2', style: TextStyle(fontSize: 16)),
                  Text('Done', style: TextStyle(fontSize: 14)),
                ],
              ),
            ],
          ),
          Divider(height: 40),
          ListTile(
            title: Text('General'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            title: Text('Notification'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            title: Text('Help'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
        ],
      ),
    );
  }
}

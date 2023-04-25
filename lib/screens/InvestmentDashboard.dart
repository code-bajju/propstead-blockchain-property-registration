import 'package:flutter/material.dart';
import 'dart:math';

import 'dart:math';

Random _random = Random();

int generateRandomNumber() {
  int min = 100000;
  int max = 200000;
  return min + _random.nextInt(max - min);
}

class InvestmentDashboard extends StatefulWidget {
  const InvestmentDashboard({Key? key}) : super(key: key);

  @override
  _InvestmentDashboardState createState() => _InvestmentDashboardState();
}

class _InvestmentDashboardState extends State<InvestmentDashboard> {
  List<String> investments = [
    'Mumbai - Commercial Property',
    'Bangalore - Residential Property',
    'Chennai - Industrial Property',
    'Delhi - Mixed-Use Property',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Investment Dashboard'),
        backgroundColor: Colors.black,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Your Current Investments:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
            SizedBox(height: 8.0),
            Expanded(
              child: ListView.builder(
                itemCount: investments.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(investments[index]),
                    trailing: Text(
                      '\ INR ${generateRandomNumber()}',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                'View Investment History',
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.black, // background color
              ),
            ),
          ],
        ),
      ),
    );
  }
}

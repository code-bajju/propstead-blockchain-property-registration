import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo.png', // replace with your own image asset path
              width: 200,
              height: 200,
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Icon(Icons.check_circle_outline, size: 50),
                    SizedBox(height: 10),
                    Text('Item 1', style: TextStyle(fontSize: 20)),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.check_circle_outline, size: 50),
                    SizedBox(height: 10),
                    Text('Item 2', style: TextStyle(fontSize: 20)),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.check_circle_outline, size: 50),
                    SizedBox(height: 10),
                    Text('Item 3', style: TextStyle(fontSize: 20)),
                  ],
                ),
              ],
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Icon(Icons.check_circle_outline, size: 50),
                    SizedBox(height: 10),
                    Text('Item 4', style: TextStyle(fontSize: 20)),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.check_circle_outline, size: 50),
                    SizedBox(height: 10),
                    Text('Item 5', style: TextStyle(fontSize: 20)),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.check_circle_outline, size: 50),
                    SizedBox(height: 10),
                    Text('Item 6', style: TextStyle(fontSize: 20)),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

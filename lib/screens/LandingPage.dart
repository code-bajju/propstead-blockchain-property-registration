import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:land_registration/constant/constants.dart';
import 'package:land_registration/screens/addLandInspector.dart';
import 'package:land_registration/screens/land_inspector_dashboard.dart';
import 'package:land_registration/screens/user_dashboard.dart';
import 'package:universal_html/html.dart' as html;
import '../constant/utils.dart';

void main() {
  runApp(LandingPage());
}

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    
      title: 'PropStead - Property Registration',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
      routes: {
        '/page1': (context) => UserDashBoard(),
        '/page2': (context) => AddLandInspector(),
        '/page3': (context) => LandInspector(),
        '/page4': (context) => Page4(),
        '/page5': (context) => Page5(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Row(
          children: [
            Container(
              width: 200.0,
              color: Color.fromARGB(170, 51, 51, 51),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 30.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      'PropStead',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                       
                      ),
                    ),
                  ),
                  SizedBox(height: 30.0),
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text('Home'),textColor: Colors.white,
                    iconColor: Colors.white,
                    onTap: () {
                      Navigator.pushNamed(context, '/');
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.pageview),
                    title: Text('Users'),textColor: Colors.white,
                                        iconColor: Colors.white,

                    onTap: () {
                      Navigator.pushNamed(context, '/page1');
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.pageview),
                    title: Text('Land Inspector'),textColor: Colors.white,
                                        iconColor: Colors.white,

                    onTap: () {
                      Navigator.pushNamed(context, '/page2');
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.pageview),
                    title: Text('Contract Owner'),textColor: Colors.white,
                                        iconColor: Colors.white,
                                    
                                        

                    onTap: () {
                      Navigator.pushNamed(context, '/page3');
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.pageview),
                    title: Text('About'),textColor: Colors.white,
                                        iconColor: Colors.white,

                    onTap: () {
                      Navigator.pushNamed(context, '/page4');
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.pageview),
                    title: Text('Help & Support'),textColor: Colors.white,
                                        iconColor: Colors.white,

                    onTap: () {
                      Navigator.pushNamed(context, '/page5');
                    },
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Image.asset(
                  //   'assets/Background.jpeg',
                  //   width: 500.0,
                  //   height: 500.0,
                  //   fit: BoxFit.cover,
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 1'),
      ),
      body: Center(
        child: Text('This is Page 1'),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text
('Page 2'),
),
body: Center(
child: Text('This is Page 2'),
),
);
}
}

class Page3 extends StatelessWidget {
@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: Text('Page 3'),
),
body: Center(
child: Text('This is Page 3'),
),
);
}
}

class Page4 extends StatelessWidget {
@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: Text('Page 4'),
),
body: Center(
child: Text('This is Page 4'),
),
);
}
}

class Page5 extends StatelessWidget {
@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: Text('Page 5'),
),
body: Center(
child: Text('This is Page 5'),
),
);
}
}
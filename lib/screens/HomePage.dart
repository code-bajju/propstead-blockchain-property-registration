import 'package:flutter/material.dart';
import 'package:land_registration/widget/header.dart';
import 'package:land_registration/widget/homePageDecription.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../constant/utils.dart';

const kBackgroundColor = Color.fromARGB(255, 212, 237, 188);

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // Initialize width and isDesktop variables
    width = MediaQuery.of(context).size.width;
    if (width > 600) {
      width = 590;
      isDesktop = true;
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Row(
        children: <Widget>[
          // Sidebar
          Container(
            width: 200,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomAnimatedContainer('Contract Owner', () {
                  Navigator.of(context).pushNamed(
                    '/login',
                    arguments: "owner",
                  );
                }),
                CustomAnimatedContainer('Land Inspector', () {
                  Navigator.of(context).pushNamed(
                    '/login',
                    arguments: "LandInspector",
                  );
                }),
                CustomAnimatedContainer('User', () {
                  Navigator.of(context).pushNamed(
                    '/login',
                    arguments: "UserLogin",
                  );
                }),
              ],
            ),
          ),
          // Main content
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  // Top Header
                  const Material(
                    elevation: 10,
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: 100.0, top: 550, right: 50, bottom: 15),
                      child: HeaderWidget(),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 150.0, top: 0, right: 150),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        const LeftDescription(),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

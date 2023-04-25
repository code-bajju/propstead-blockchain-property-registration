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
    width = MediaQuery.of(context).size.width;
    if (width > 600) {
      width = 590;
      isDesktop = true;
    }
    return
//      return
//  Container(
//    decoration: BoxDecoration(
//      image: DecorationImage(
//       image: AssetImage("assets/background.jpeg"),
//       fit: BoxFit.fill,
//     ),
//   ),    
    // child:
     Scaffold(
      backgroundColor: kBackgroundColor,
      
      body: SingleChildScrollView(
        child: Column(
          
          children: <Widget>[
            // Top Header
            const Material(
              elevation: 10,
              child: Padding(
                padding: EdgeInsets.only(
                    left: 150.0, top: 20, right: 50, bottom: 15),
                child: HeaderWidget(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 150.0, top: 0, right: 150),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  // const LeftDescription(),
                   SvgPicture.asset(
  'assets/hero.svg', // replace with the correct file path of your SVG asset
  
),
                   Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Icon(Icons.security, size: 50),
                    SizedBox(height: 10),
                    Text('Secure & Transparent', style: TextStyle(fontSize: 20)),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.accessibility, size: 50),
                    SizedBox(height: 10),
                    Text('Convenient Access', style: TextStyle(fontSize: 20)),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.fast_forward, size: 50),
                    SizedBox(height: 10),
                    Text('Fast And Efficient', style: TextStyle(fontSize: 20)),
                  ],
                ),
              ],
            ),

            SizedBox(height: 50,),
              Row( 
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  
                  children: [
                    Icon(Icons.money, size: 50),
                    SizedBox(height: 10),
                    Text('Investment Opportunities', style: TextStyle(fontSize: 20)),
                  ],
                ),
                
                Column(
                  children: [
                    Icon(Icons.verified, size: 50),
                    SizedBox(height: 10),
                    Text('Reliable Verification', style: TextStyle(fontSize: 20)),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.check_box, size: 50),
                    SizedBox(height: 10),
                    Text('Eliminates Intermediaries', style: TextStyle(fontSize: 20)),
                  ],
                ),
              ],
            ),
           SizedBox(height: 150,),
                Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
                              const LeftDescription(),
                            Container(
  height: 80.0,
    width: double.infinity,

  color: Colors.green[50],
  child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        'Made with ',
        style: TextStyle(fontSize: 16.0, color: Colors.black),
      ),
      Icon(Icons.favorite, color: Colors.red),
      Text(
        ' By EliteByte',
        style: TextStyle(fontSize: 16.0, color: Colors.black),
      ),
    ],
  ),
),



//             SvgPicture.asset(
//   'assets/hero.svg', // replace with the correct file path of your SVG asset
  
// ),
            
          
          ],
        ),
      ),
],
              ),
            ),
            // const SizedBox(
            //   height: 100,
            // ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     CustomAnimatedContainer('Contract Owner', () {
            //       // Navigator.push(
            //       //     context,
            //       //     MaterialPageRoute(
            //       //         builder: (context) => const CheckPrivateKey(
            //       //               val: "owner",
            //       //             )));
            //       Navigator.of(context).pushNamed(
            //         '/login',
            //         arguments: "owner",
            //       );
            //     }),
            //     CustomAnimatedContainer('Land Inspector', () {
            //       // Navigator.push(
            //       //     context,
            //       //     MaterialPageRoute(
            //       //         builder: (context) => const CheckPrivateKey(
            //       //               val: "LandInspector",
            //       //             )));
            //       Navigator.of(context).pushNamed(
            //         '/login',
            //         arguments: "LandInspector",
            //       );
            //     }),
            //     CustomAnimatedContainer('User', () {
            //       // Navigator.push(
            //       //     context,
            //       //     MaterialPageRoute(
            //       //         builder: (context) => const CheckPrivateKey(
            //       //               val: "UserLogin",
            //       //             )));
            //       Navigator.of(context).pushNamed(
            //         '/login',
            //         arguments: "UserLogin",
            //       );
            //     }),
            //   ],
            // ),
            // const SizedBox(
            //   height: 100,
            // ),
          ],
        ),
        
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
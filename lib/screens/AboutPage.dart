import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About'),
        backgroundColor: Colors.black,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Welcome to our property registration website!',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
            Text(
              'Our platform leverages blockchain technology to make property transactions secure, reliable, and transparent. We aim to simplify the process of property transactions and provide a seamless and efficient experience to all our users.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            Text(
              'Our platform provides a range of features that cater to the needs of both property owners and buyers. With our User page, you can easily manage your properties and transactions, add your property to the platform, keep track of your listings, browse through other properties, and view your transaction history.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            Text(
              'Our Land Inspector page provides reliable verification services to all our users, ensuring that the ownership and other details of the properties listed on our platform are accurate and up-to-date. With our Transfer Ownership feature, you can be sure that the transaction is secure and transparent.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            Text(
              'Our Bidding page provides users with an auction and bidding feature, allowing property owners to start an auction for their property and receive bids from interested buyers. Buyers can browse through all the properties that are up for auction and place their bids with complete transparency throughout the process.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            Text(
              'Our Real Estate Investment page provides users with the opportunity to invest in properties by buying shares in Real Estate Investment Trusts (REITs). This feature allows users to diversify their investment portfolios and gain exposure to the real estate market in a secure and transparent manner.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            Text(
              'We are committed to providing the best possible experience for our users. If you have any questions or feedback, please feel free to contact our support team, who are available 24/7.',
              style: TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }
}

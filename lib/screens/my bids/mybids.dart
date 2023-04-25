import 'package:flutter/material.dart';

class MyBids extends StatefulWidget {
  const MyBids({Key? key}) : super(key: key);

  @override
  State<MyBids> createState() => _MyBidsState();
}

class _MyBidsState extends State<MyBids> {
  final _formKey = GlobalKey<FormState>();
              DateTime? _selectedDate;
                final TextEditingController _selectedDateController= TextEditingController();


  final List<TextEditingController> _controllers = List.generate(
    6,
    (_) => TextEditingController(),
    
  );

  void _submitForm() {
    bool hasEmptyField = false;
    for (int i = 0; i < 5; i++) {
      if (_controllers[i].text.isEmpty) {
        hasEmptyField = true;
        break;
      }
    }
    if (hasEmptyField) {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Empty Field'),
            content: Text('Please fill out all fields.'),
            actions: [
              TextButton(
                child: Text('OK'),
                onPressed: () => Navigator.pop(context),
              ),
            ],
          );
        },
      );
    } else {
      // Do something with the form data
    }
  }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF272D34),
        title: const Text('My Bids'),
      ),
      body:SizedBox.expand(
        child: Container(
        padding: EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              TextFormField(
                controller: _controllers[0],
                decoration: InputDecoration(
                  labelText: 'Property Details',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16),
              TextFormField(
                controller: _controllers[1],
                decoration: InputDecoration(
                  labelText: 'Minimum Bid Price',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16),

TextFormField(
                  decoration: InputDecoration(hintText: "Bid Closing Time"),
                  controller: _selectedDateController,
                  validator: (value) => value!.isEmpty ? "Bid Closing Time" : null,
                  onChanged: (value) {
                    setState(() {
                      _selectedDate = value as DateTime?;
                    });
                  },
                ),

              SizedBox(height: 16),
              TextFormField(
                controller: _controllers[3],
                decoration: InputDecoration(
                  labelText: 'Property Images',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16),
              TextFormField(
                controller: _controllers[4],
                decoration: InputDecoration(
                  labelText: 'Contact Information',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16),
          //     TextFormField(
          //       controller: _controllers[5],
          //       decoration: InputDecoration(
          //         labelText: 'Text Field 6',
          //       ),
          //       validator: (value) {
          //         if (value!.isEmpty) {
          //           return 'Please enter some text';
          //     }
          //     return null;
          //   },
          // ),
          SizedBox(height: 32),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                _submitForm();
              }
            },
             style: ElevatedButton.styleFrom(
    primary: Colors.black,
    
     // background color
  ),
            child: Text('Submit'),
            
          ),
        ],
      ),
    ),
            ),
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Text('My Bids',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
            ),
            ListTile(
              title: const Text('Sell Property'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Buy Property'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Bidding History'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
    }}

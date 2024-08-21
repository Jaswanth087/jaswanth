import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String? _selectedOption = 'Yes';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Radio Buttons in Row'),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Yes'),
              Radio<String>(
                value: 'Yes',
                groupValue: _selectedOption,
                onChanged: (String? value) {
                  setState(() {
                    _selectedOption = value;
                  });
                },
              ),
              SizedBox(width: 20), // Add some space between the buttons
              Text('No'),
              Radio<String>(
                value: 'No',
                groupValue: _selectedOption,
                onChanged: (String? value) {
                  setState(() {
                    _selectedOption = value;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

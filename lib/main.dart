import 'package:flutter/material.dart';
import 'package:flutter_application_1/instagram_ui.dart';

void main() {
  runApp(MaterialApp(home: InstagramUi()));
}

class MyFirstUi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(appBar: AppBar(
      title: Text('Omar App'),

    ),
    backgroundColor: Color(0xFFF2DEBA),
    body:Row(children: [
      Text('First element'),
      Text('Second element'),
      Text('Third element'),
    ]),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application_1/instagram_ui.dart';
import 'package:flutter_application_1/instagram_ui/screens/instegram_screen.dart';
import 'package:flutter_application_1/scrolables/gridview_builder_example.dart';
import 'package:flutter_application_1/scrolables/listview_builder_example.dart';
import 'package:flutter_application_1/stateful_screen/stateful_screen.dart';

void main() {
  runApp(InitClass());
}

class InitClass extends StatefulWidget {
  @override
  State<InitClass> createState() => _InitClassState();
}

class _InitClassState extends State<InitClass> {
  bool isDark = false;
  void changeTheme() {
    isDark = !isDark;
    setState(() {});
  }

  String getNAme() {
    return "omar";
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        theme: isDark ? ThemeData.dark() : ThemeData.light(),
        home: InstegramScreen());
  }
}

class MyFirstUi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Omar App'),
      ),
      backgroundColor: Color(0xFFF2DEBA),
      body: Row(children: [
        Text('First element'),
        Text('Second element'),
        Text('Third element'),
      ]),
    );
  }
}

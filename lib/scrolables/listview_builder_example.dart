import 'package:flutter/material.dart';
import 'package:flutter_application_1/scrolables/category_widget.dart';

class ListViewBuilderExample extends StatelessWidget {
  List<String> categories = [
    'Fashion',
    'Kids',
    'Electronics',
    'Clothees',
    'Books',
    'Foods'
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return CategoryWidget(categories[index],index);
          }),
    );
  }
}

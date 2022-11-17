import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  final String catName;
  final int index;
  const CategoryWidget(this.catName,this.index);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      alignment:
      (index % 2) ==0?
      
       Alignment.centerRight: Alignment.centerLeft,
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      height: 100,
      child: Text(
        catName,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
      ),
      decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.5),
          borderRadius: BorderRadius.circular(15)),
    );
  }
}

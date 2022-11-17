import 'package:flutter/material.dart';

class ProductWidget extends StatelessWidget {
  final String productName;
  final String productDesc;
  final String productPrice;
  final String productImage;

  const ProductWidget(
      {Key? key,
      required this.productName,
      required this.productDesc,
      required this.productPrice,
      required this.productImage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Container(height: 190,
        decoration: BoxDecoration(
          color: Color(0xFFCCCCCC),
          borderRadius: BorderRadius.circular(15)),
        ),
        SizedBox(height: 10,),
        Text(productName,style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500),),
        Text(productDesc),
        Text(productPrice),
      ],
    );
  }
}

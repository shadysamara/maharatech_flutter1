import 'package:flutter/material.dart';
import 'package:flutter_application_1/scrolables/product_model.dart';
import 'package:flutter_application_1/scrolables/product_widget.dart';

class GridviewExample extends StatelessWidget {
  List<ProductModel> products = [];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 3,
              child: Container(color: Colors.red,)),
                        Expanded(
                          flex: 2,
                child: Container(
              color: Colors.blue,
            )),
            /*Text('Perfume and Makeup',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
            SizedBox(height: 15,),
           
            Expanded(
              
              child: GridView.builder(
              
                  gridDelegate:
                      SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
                      
                      crossAxisSpacing: 15,
                      mainAxisExtent: 270),
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return ProductWidget(
                        productName: 'Summer Tshirt',
                        productDesc: 'Tshirt made of cotton',
                        productPrice: '20 nis',
                        productImage: '');
                  }),
            ),
          */
          ],
        ),
      ),
    );
  }
}

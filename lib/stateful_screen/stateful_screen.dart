import 'dart:developer';

import 'package:flutter/material.dart';

class StatefulScreen extends StatelessWidget {
  Function myFun;
  StatefulScreen(this.myFun);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                myFun();
              },
              icon: Icon(Icons.dark_mode))
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'hello',
            style: TextStyle(fontSize: 30),
            textAlign: TextAlign.center,
          ),
          ElevatedButton(onPressed: () {}, child: Text('Change Content')),
          ElevatedButton(onPressed: () {}, child: Text('print Content'))
        ],
      ),
    );
  }
}

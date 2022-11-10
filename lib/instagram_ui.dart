import 'package:flutter/material.dart';

class InstagramUi extends StatelessWidget {
  String x = 'hello';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          title: Image.asset(
            'images/logo.png',
            width: 120,
          ),
          centerTitle: true,
          leading: const Icon(
            Icons.arrow_back_ios,
            color: Color.fromARGB(255, 17, 14, 14),
          ),
          actions: [
            const Text('hello'),
            const Text('hello'),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: Image.asset(
                'images/refresh.png',
                width: 30,
              ),
            )
          ]),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Row(
              children: [
                CircleAvatar(
                    radius: 25, backgroundImage: AssetImage('images/man.jpeg')),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'UserName',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 10,
                ),
                Image.asset(
                  'images/quality.png',
                  width: 20,
                ),
                Spacer(),
                Icon(Icons.more_horiz)
              ],
            ),
          ),
          Container(
            color: Colors.red,
            child: Image.asset(
              'images/jerusalem.jpg',
              fit: BoxFit.cover,
              height: 400,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Image.asset(
                'images/like.png',
                width: 25,
              ),
              SizedBox(
                width: 10,
              ),
              Image.asset(
                'images/comment.png',
                width: 25,
              ),
              SizedBox(
                width: 10,
              ),
              Image.asset(
                'images/share.png',
                width: 25,
              ),
              Spacer(),
              Image.asset(
                'images/save.png',
                width: 25,
              ),
              SizedBox(
                width: 10,
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          RichText(
              text: const TextSpan(
                  style: TextStyle(color: Colors.black, fontSize: 16),
                  children: [
                TextSpan(text: '  Liked by'),
                TextSpan(
                    text: ' Omar sh',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: ' and '),
                TextSpan(
                    text: ' 375 others',
                    style: TextStyle(fontWeight: FontWeight.bold))
              ]))
        ],
      ),
    );
  }
}

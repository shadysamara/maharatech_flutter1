import 'package:flutter/material.dart';

class InstagramIconsBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
      child: Row(
        children: [
        const  SizedBox(
            width: 10,
          ),
          Image.asset(
            'images/like.png',
            width: 25,
          ),
         const SizedBox(
            width: 10,
          ),
          Image.asset(
            'images/comment.png',
            width: 25,
          ),
        const  SizedBox(
            width: 10,
          ),
          Image.asset(
            'images/share.png',
            width: 25,
          ),
        const  Spacer(),
          Image.asset(
            'images/save.png',
            width: 25,
          ),
        const  SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}

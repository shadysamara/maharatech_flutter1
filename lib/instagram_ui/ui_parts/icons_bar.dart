import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/data.dart';
import 'package:flutter_application_1/data/post_model.dart';

class InstagramIconsBar extends StatelessWidget {
  PostModel postModel;
  Function fun;
  InstagramIconsBar(this.postModel,this.fun);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Row(
        children: [
          const SizedBox(
            width: 10,
          ),
          InkWell(
            onTap: () {
             fun(postModel);
            },
            child: Image.asset(
              postModel.isLike
                  ? 'images/selected_like.png'
                  : 'images/like.png',
              width: 25,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          InkWell(
            child: Image.asset(
              'images/comment.png',
              width: 25,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Image.asset(
            'images/share.png',
            width: 25,
          ),
          const Spacer(),
          Image.asset(
            'images/save.png',
            width: 25,
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}

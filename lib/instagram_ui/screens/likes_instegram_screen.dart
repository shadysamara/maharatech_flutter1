import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/data.dart';
import 'package:flutter_application_1/instagram_ui/ui_parts/instagram_post.dart';

class LikesInstegramScreen extends StatelessWidget {
  Function fun;
  LikesInstegramScreen(this.fun);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        itemCount: postsModels.where((element) => element.isLike).length,
        itemBuilder: (context, index) {
          return InstagramPost(
              postsModels.where((element) => element.isLike).toList()[index],fun);
        });
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/data.dart';
import 'package:flutter_application_1/data/post_model.dart';
import 'package:flutter_application_1/instagram_ui/ui_parts/instagram_appbar.dart';
import 'package:flutter_application_1/instagram_ui/ui_parts/instagram_post.dart';

class MainInstegramScreen extends StatelessWidget {
  Function function;
  MainInstegramScreen(this.function);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        itemCount: postsModels.length,
        itemBuilder: (context, index) {
          return InstagramPost(postsModels[index],function);
        });
  }
}

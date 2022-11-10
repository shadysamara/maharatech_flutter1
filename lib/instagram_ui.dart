import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/data.dart';
import 'package:flutter_application_1/data/post_model.dart';
import 'package:flutter_application_1/instagram_ui/ui_parts/header.dart';
import 'package:flutter_application_1/instagram_ui/ui_parts/icons_bar.dart';
import 'package:flutter_application_1/instagram_ui/ui_parts/instagram_appbar.dart';
import 'package:flutter_application_1/instagram_ui/ui_parts/instagram_post.dart';
import 'package:flutter_application_1/instagram_ui/ui_parts/post_body.dart';
import 'package:flutter_application_1/instagram_ui/ui_parts/text_bar.dart';

class InstagramUi extends StatelessWidget {
  List<PostModel> convertDataToPosts() {
    return posts.map((e) {
      return PostModel.fromMap(e);
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: InstagramAppbar(),
        body: SingleChildScrollView(
          child: Column(
              children: convertDataToPosts().map((e) {
            return InstagramPost(e);
          }).toList()),
        ));
  }
}

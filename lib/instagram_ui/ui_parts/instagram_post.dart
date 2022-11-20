import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/post_model.dart';
import 'package:flutter_application_1/instagram_ui/ui_parts/header.dart';
import 'package:flutter_application_1/instagram_ui/ui_parts/icons_bar.dart';
import 'package:flutter_application_1/instagram_ui/ui_parts/post_body.dart';
import 'package:flutter_application_1/instagram_ui/ui_parts/text_bar.dart';

class InstagramPost extends StatelessWidget {
  PostModel postModel;
  Function function;
  InstagramPost(this.postModel,this.function);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InstagramHeader(postModel.instagramUser!),
        InstagramPostBody(postModel.image!),
        InstagramIconsBar(postModel,function),
        InstagramTextBar(postModel.content!),
        const Divider()
      ],
    );
  }
}

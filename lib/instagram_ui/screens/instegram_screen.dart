import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/data.dart';
import 'package:flutter_application_1/data/post_model.dart';
import 'package:flutter_application_1/instagram_ui/screens/likes_instegram_screen.dart';
import 'package:flutter_application_1/instagram_ui/screens/main_instegram_screen.dart';

class InstegramScreen extends StatefulWidget {
  @override
  State<InstegramScreen> createState() => _InstegramScreenState();
}

class _InstegramScreenState extends State<InstegramScreen> {
  int index = 0;
  PageController pageController = PageController();
    likePost(PostModel postModel) {
    int index = postsModels.indexOf(postModel);
    postsModels[index].isLike = !postsModels[index].isLike;
    setState(() {});
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      body: PageView.builder(
          controller: pageController,
          itemCount: 2,
          itemBuilder: (context, index) {
            if (index == 0) {
              return MainInstegramScreen(likePost);
            } else {
              return LikesInstegramScreen(likePost);
            }
          }),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          onTap: (i) {
            pageController.animateToPage(i,
                duration: Duration(milliseconds: 100), curve: Curves.easeIn);
            index = i;
            setState(() {});
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: 'Favourites')
          ]),
    );
  }
}

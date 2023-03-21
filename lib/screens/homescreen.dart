import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:instagram/widgets/story_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Instagram',
          style: TextStyle(color: Colors.black, fontFamily: "DMSerifDisplay", fontSize: 28),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                CupertinoIcons.heart,
                color: Colors.black,
                size: 28,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                CupertinoIcons.bubble_left,
                color: Colors.black,
                size: 28,
              ))
        ],
      ),
      body: Column(children: [
        scrollableStory(context),
      ],),
    );
  }
}

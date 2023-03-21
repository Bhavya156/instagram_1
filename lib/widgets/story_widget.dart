import 'package:flutter/material.dart';

Widget storyWidget(BuildContext context) {
  return const CircleAvatar(
    radius: 40,
    backgroundColor: Colors.deepOrangeAccent,
    child: CircleAvatar(
      foregroundImage: AssetImage("assets/images/002.png"),
      radius: 37,
    ),
  );
}

Widget scrollableStory(BuildContext context) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    width: MediaQuery.of(context).size.width,
    height: 110,
    child: ListView.separated(
      itemBuilder: (_, i) => storyWidget(context),
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(width: 10);
      },
      itemCount: 10,
      scrollDirection: Axis.horizontal,
    ),
  );
}

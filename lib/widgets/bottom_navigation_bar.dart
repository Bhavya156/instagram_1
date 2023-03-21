// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../screens/explore_screen.dart';
import '../screens/homescreen.dart';
import '../screens/new_post_screen.dart';
import '../screens/profile_screen.dart';
import '../screens/reel_screen.dart';

class bottomNavigationBar extends StatefulWidget {
  const bottomNavigationBar({super.key});

  static const routeName = '/bottomnavigation';

  @override
  State<bottomNavigationBar> createState() => _bottomNavigationBarState();
}

class _bottomNavigationBarState extends State<bottomNavigationBar> {
  late List<Map<String, Widget>> _pages;
  int _selectedIndexPage = 0;

  @override
  void initState() {
    _pages = [
      {
        'page': const HomeScreen(),
      },
      {'page': const ExploreScreen()},
      {
        'page': const NewPostScreen(),
      },
      {
        'page': const ReelScreen(),
      },
      {
        'page': const ProfileScreen(),
      }
    ];
    super.initState();
  }

  void _selectPage(int index) {
    setState(() {
      _selectedIndexPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        child: _pages[_selectedIndexPage]['page'],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: _selectPage,
        currentIndex: _selectedIndexPage,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.house_fill), label: ""),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.search), label: ""),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.plus_app), label: ""),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.play_arrow_solid), label: ""),
          BottomNavigationBarItem(
              icon: CircleAvatar(
                backgroundImage: AssetImage('assets/images/002.png'),
              ),
              label: ""),
        ],
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
      ),
    );
  }
}

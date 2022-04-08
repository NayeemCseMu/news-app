import 'package:flutter/material.dart';
import 'package:news_app/widgets/tab_&_nav_bar.dart';

List<Widget> pages = [
  TabSection(),
  Center(
    child: Text("Serach"),
  ),
  Center(
    child: Text("Bookmark"),
  ),
  Center(
    child: Text("Settings"),
  ),
];

List<IconData> inActive = [
  Icons.home_outlined,
  Icons.search_outlined,
  Icons.bookmark_add_outlined,
  Icons.settings_outlined,
];
List<IconData> activeIcon = [
  Icons.home,
  Icons.search,
  Icons.bookmark,
  Icons.settings,
];

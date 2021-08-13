import 'package:get/get.dart';
import 'package:news_app/module/dashboard/view/home/news_home.dart';
import 'package:news_app/module/dashboard/view/test.dart';

class AppRoutes {
  static final String home = '/';
  static final String test = '/test';

  static List<GetPage> getPages = [
    GetPage(name: home, page: () => NewsHome()),
    GetPage(name: test, page: () => Test()),
  ];
}

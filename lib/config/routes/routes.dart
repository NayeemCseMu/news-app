import 'package:get/get.dart';
import 'package:news_app/module/dashboard/view/home/news_home.dart';

List<GetPage> getPages = [
  GetPage(name: NewsHome.routeName, page: ()=> NewsHome()),
];

import 'package:get/get.dart';
import 'package:news_app/module/dashboard/model/news_model.dart';

class NewsController extends GetxController {
  var newsLoading = false.obs;
  var newsModel = NewsModel().obs;

  Future<void> getNews() async {}
}

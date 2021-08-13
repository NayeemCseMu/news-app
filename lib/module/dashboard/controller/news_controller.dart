import 'package:get/get.dart';
import 'package:news_app/module/dashboard/model/news_model.dart';
import 'package:news_app/utils/service/api/news_api_service.dart';

class NewsController extends GetxController {
  var newsLoading = false.obs;
  var newsModel = NewsModel().obs;

  @override
  Future<void> onInit() async {
    super.onInit();
    getNews();
  }

  Future getNews() async {
    try {
      newsLoading(true);
      print("Controller");
      final result = await ApiService.instance.newsGetRequest();
      
      if (result != null) {
        this.newsModel.value = result;
      }
      update();
    } catch (e) {
      print(e.toString());
      throw e;
    } finally {
      newsLoading(false);
    }
  }
}

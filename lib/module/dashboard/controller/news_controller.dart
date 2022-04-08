import 'package:get/get.dart';
import 'package:news_app/module/dashboard/model/news_model.dart';
import 'package:news_app/utils/service/api/news_api_service.dart';

class NewsController extends GetxController {
  var newsLoading = false.obs;
  var topHeadlineNews = NewsModel().obs;
  var everythingNews = NewsModel().obs;

  @override
  Future<void> onInit() async {
    super.onInit();
    everyNews();
  }

  Future topHeadline() async {
    try {
      newsLoading(true);

      final result = await ApiService.instance.getTopHeadline();

      if (result != null) {
        this.topHeadlineNews.value = result;
      }
      update();
    } catch (e) {
      print(e.toString());
      throw e;
    } finally {
      newsLoading(false);
    }
  }

  Future everyNews() async {
    try {
      newsLoading(true);

      final result = await ApiService.instance.getEverythingNews();

      if (result != null) {
        this.everythingNews.value = result;
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

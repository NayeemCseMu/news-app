import 'package:get/get.dart';
import 'package:news_app/module/dashboard/controller/app_controller.dart';
import 'package:news_app/module/dashboard/controller/news_controller.dart';

class ControllerBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AppController>(() => AppController());
    Get.lazyPut<NewsController>(() => NewsController());
  }
}

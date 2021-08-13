import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/module/dashboard/controller/news_controller.dart';

class Test extends StatelessWidget {
  const Test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    NewsController controller = Get.find();
    return Scaffold(
      body: Center(child: Text("Text"),),
    );
  }
}

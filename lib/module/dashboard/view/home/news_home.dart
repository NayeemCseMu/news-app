import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/constants/app_text.dart';
import 'package:news_app/constants/constants.dart';
import 'package:news_app/constants/size.dart';
import 'package:news_app/module/dashboard/controller/app_controller.dart';
import 'package:news_app/module/dashboard/controller/news_controller.dart';
import 'package:news_app/widgets/tab_&_nav_bar.dart';

class NewsHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ResponsiveSize.init(context);
    AppController ctrl = Get.find();
    return SafeArea(
      child: Scaffold(
        body: GetBuilder<AppController>(
          init: AppController(),
          builder: (ctrl) => LayoutBuilder(
            builder: (context, constraints) {
              print("constraints: ");

              return Container(
                height: constraints.maxHeight,
                margin: EdgeInsets.only(top: 30),
                child: PageView.builder(itemBuilder: (ctx, index) {
                  return pages[ctrl.navIndex.value];
                }),
              );
            },
          ),
        ),
        bottomNavigationBar: NavBar(),
      ),
    );
  }
}

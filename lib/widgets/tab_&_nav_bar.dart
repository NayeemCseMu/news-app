import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/constants/app_text.dart';
import 'package:news_app/constants/constants.dart';
import 'package:news_app/constants/size.dart';
import 'package:news_app/module/dashboard/controller/app_controller.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppController navCtrl = Get.find();
    return Container(
      height: getScreenHeight(80),
      color: Colors.black,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
            4,
            (index) => Obx(
              () => NavItems(
                press: () {
                  navCtrl.navIndex(index);
                  onTap(index);
                },
                icon: navCtrl.navIndex.value == index
                    ? activeIcon[index]
                    : inActive[index],
              ),
            ),
          )),
    );
  }

  void onTap(int index) {
    switch (index) {
      case 0:
        print("home");
        break;
      case 1:
        print("search");
        break;
      case 2:
        print("bookmark");
        break;
      case 3:
        print("settings");
        break;
      default:
        break;
    }
  }
}

class NavItems extends StatelessWidget {
  const NavItems({Key? key, this.press, this.icon}) : super(key: key);
  final VoidCallback? press;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: press,
      icon: Icon(
        icon!,
        color: Colors.white,
        size: 25,
      ),
    );
  }
}

class TabSection extends StatelessWidget {
  const TabSection({this.constraints});
  final BoxConstraints? constraints;
  @override
  Widget build(BuildContext context) {
    AppController ctrl = Get.find();
    return SizedBox(
      height: ResponsiveSize.screenHeight * 0.05,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(
          categoryTabs.length,
          (index) => Obx(
            () => InkWell(
              onTap: () => ctrl.tabIndex(index),
              child: AnimatedContainer(
                duration: 500.milliseconds,
                curve: Curves.ease,
                height: getScreenHeight(40),
                margin: EdgeInsets.symmetric(horizontal: 5),
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 3),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: index == ctrl.tabIndex.value
                      ? Colors.black
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  categoryTabs[index].capitalize!,
                  style: GoogleFonts.aBeeZee(
                      textStyle: Get.textTheme.subtitle1!.copyWith(
                          color: index == ctrl.tabIndex.value
                              ? Colors.white
                              : Colors.black54)),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

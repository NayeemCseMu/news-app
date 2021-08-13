import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:news_app/config/routes/routes.dart';
import 'package:news_app/module/dashboard/view/home/news_home.dart';
import 'package:news_app/utils/helper/bindings.dart';
import 'config/theme/theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'News App',
      theme: themeData,
      debugShowCheckedModeBanner: false,
      initialBinding: ControllerBindings(),
      initialRoute: NewsHome.routeName,
      getPages: getPages,
      defaultTransition: Transition.cupertino,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:news_app/config/routes/routes.dart';
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
      initialRoute: AppRoutes.home,
      getPages: AppRoutes.getPages,
      defaultTransition: Transition.cupertino,
    );
  }
}

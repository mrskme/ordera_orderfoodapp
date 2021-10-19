import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ordera_orderfoodapp/Constants/Food/sauces.dart';
import 'routes/app_pages.dart';
import 'routes/app_routes.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "test 123",
      debugShowCheckedModeBanner: false,
      initialRoute: Paths.home,
      getPages: AppPages.routes,
    );
  }
}

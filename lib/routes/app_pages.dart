import 'package:ordera_orderfoodapp/home_page/home_page.dart';
import 'package:ordera_orderfoodapp/home_page/home_page_bindings.dart';
import 'package:ordera_orderfoodapp/root/root_bindings.dart';
import 'package:ordera_orderfoodapp/root/root_view.dart';
import 'package:ordera_orderfoodapp/routes/app_routes.dart';
import 'package:get/get.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.Home;

  static final routes = [
    GetPage(
        name: '/',
        page: () => RootView(),
        binding: RootBinding(),
        participatesInRootNavigator: true,
        preventDuplicates: true,
        children: [
          GetPage(
              name: Paths.home,
              page: () => HomePage(),
              binding: HomePageBindings())
        ])
  ];
}

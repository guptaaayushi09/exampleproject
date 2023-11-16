import 'package:example/src/modules/userdata/binding/userdatabinding.dart';
import 'package:example/src/modules/userdata/views/home.dart';
import 'package:example/src/modules/userdata/views/secondpage.dart';
import 'package:get/get.dart';

class MyRoutes {
  static String secondPage = "/second_page";
  static String home = "/home";
}

final routes = [
  GetPage(
    name: MyRoutes.home,
    page: () => Home(),
    binding: UserdataBindings(),
  ),
  GetPage(
    name: MyRoutes.secondPage,
    page: () => SecondPage(),
    binding: UserdataBindings(),
  ),
];

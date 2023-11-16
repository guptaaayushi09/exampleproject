import 'package:example/src/modules/userdata/binding/userdatabinding.dart';
import 'package:example/src/modules/userdata/views/home.dart';
import 'package:example/src/modules/userdata/views/secondpage.dart';
import 'package:get/get.dart';

import '../src/modules/userdata/binding/secondpagebinding.dart';

class MyRoutes {
  static String secondPage = "/second_page";
  static String home = "/home";
}

final routes = [
  GetPage(
    name: MyRoutes.home,
    page: () => const Home(),
    binding: UserdataBindings(),
  ),
  GetPage(
    name: MyRoutes.secondPage,
    page: () => const SecondPage(),
    binding: SecondPageBindings(),
  ),
];

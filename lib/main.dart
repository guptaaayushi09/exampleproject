import 'package:example/src/modules/userdata/views/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:example/routes/route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      // initialBinding: UserdataBindings(),
      initialRoute: MyRoutes.home,

      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
      getPages: routes,
    );
  }
}

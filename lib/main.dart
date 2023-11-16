import 'dart:developer';
import 'package:example/src/modules/userdata/binding/userdatabinding.dart';
import 'package:example/src/modules/userdata/model/useralbum.dart';
import 'package:example/src/modules/userdata/views/home.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'dart:convert';
import 'dart:async';
import 'package:example/routes/route.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  MyApp({super.key});

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
      home: Home(),
      getPages: routes,
    );
  }
}

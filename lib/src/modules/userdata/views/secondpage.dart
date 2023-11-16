import 'dart:developer';
import 'package:example/src/modules/userdata/controller/userdatacontroller.dart';
import 'package:example/src/modules/userdata/model/useralbum.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondPage extends StatelessWidget {
  SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ApiModel data = Get.arguments as ApiModel;
    
    log(data.toString());
    return Card(
      child: Column(
        children: <Widget>[
          const SizedBox(
            height: 20,
          ),
          const Text(
            'User Title based on ID',
            style: TextStyle(fontSize: 24, fontFamily: AutofillHints.birthday),
          ),
          const SizedBox(
            height: 30,
          ),
          TextField(
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              hintText: 'User Title based on ID',
              labelText: 'Data from First Screen: ${data.title}',
            ),
          ),
        ],
      ),
    );
  }
}

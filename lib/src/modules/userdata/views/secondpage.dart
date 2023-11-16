import 'package:example/src/modules/userdata/model/useralbum.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/secondpagecontroller.dart';

class SecondPage extends GetView<SecondPageController> {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //controlller.dataValue.value = Get.arguments.title;

    final ApiModel data = Get.arguments as ApiModel;
    final SecondPageController yourController = Get.put(SecondPageController());
    yourController.setData(data);
    final ApiModel fetchedData = yourController.getData();

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
              labelText: 'Data from First Screen: ${fetchedData.userId}',
            ),
          ),
        ],
      ),
    );
  }
}

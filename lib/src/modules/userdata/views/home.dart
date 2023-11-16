import 'package:example/routes/route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:example/src/modules/userdata/controller/userdatacontroller.dart';

class Home extends GetView<DataController> {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          appBar: AppBar(title: Text(controller.appBar.string)),
          body: ListView.builder(
            itemCount: controller.albums.length,
            itemBuilder: (context, index) {
              final album = controller.albums[index];

              return Card(
                  child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('ID: ${album.id}'),
                          Text('Title: ${album.title}'),
                          Text('User ID: ${album.userId}'),
                          ElevatedButton(
                            style: TextButton.styleFrom(
                                minimumSize: const Size(50, 40)),
                            onPressed: () {
                              controller.appBar.value = "app";
                              Get.toNamed(MyRoutes.secondPage,
                                  arguments: album);
                            },
                            child: Text('User ID: ${album.userId}'),
                          )
                        ],
                      )));
            },
          ),
        ));
  }
}

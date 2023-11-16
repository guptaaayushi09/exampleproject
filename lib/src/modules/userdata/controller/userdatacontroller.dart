import 'dart:convert';
import 'dart:developer';
import 'package:example/src/modules/userdata/repository/repository.dart';
import 'package:get/get.dart';
import 'package:example/src/modules/userdata/model/useralbum.dart';

class DataController extends GetxController {
  RxList<ApiModel> albums = <ApiModel>[].obs;

  RxString appBar = "flutter ".obs;

  @override
  void onInit() {
    apiFun();
    super.onInit();
  }

  void apiFun() async {
    String? response = await UserRepository().fetchAlbums();
    if (response != null) {
      final json = jsonDecode(response) as List<dynamic>;
      albums.value = json.map((album) => ApiModel.fromJson(album)).toList();
      //log(albums.toString());
    }
  }

  // @override
  // void onClose() {
  //   super.onClose();
  // }
}

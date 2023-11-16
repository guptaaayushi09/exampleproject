import 'package:get/get.dart';
import 'package:example/src/modules/userdata/model/useralbum.dart';

class SecondPageController extends GetxController {
  late ApiModel _data;
  // @override
  // void onInit() {
  //   super.onInit();
  // }

  void setData(ApiModel data) {
    _data = data;
    update();
  }

  ApiModel getData() {
    return _data;
  }
}

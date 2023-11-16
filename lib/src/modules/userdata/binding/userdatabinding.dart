import 'package:get/get.dart';
import 'package:example/src/modules/userdata/controller/userdatacontroller.dart';

class UserdataBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(
      DataController(),
      permanent: true,
    );
  }
}

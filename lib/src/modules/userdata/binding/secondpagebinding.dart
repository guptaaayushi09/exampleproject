import 'package:get/get.dart';
import 'package:example/src/modules/userdata/controller/secondpagecontroller.dart';

class SecondPageBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(
      SecondPageController(),
      permanent: true,
    );
  }
}

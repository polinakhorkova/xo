import 'package:get/get.dart';

import '../controllers/registr_controller.dart';

class RegistrBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RegistrController>(
      () => RegistrController(),
    );
  }
}

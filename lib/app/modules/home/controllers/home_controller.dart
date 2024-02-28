import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:xo/app/data/services/network_service.dart';

class HomeController extends GetxController {
  var textFieldCtrl = TextEditingController();
  final _networkService = Get.find<NetworkService>();
 
    void auth() async {
    String nickname = textFieldCtrl.text;
    var regResult = await _networkService.registration(nickname);
    if (regResult) {
      Get.showSnackbar(GetSnackBar(
        title: "Регистрация не прошла",
      ));
    }
    print(nickname);
  }
}

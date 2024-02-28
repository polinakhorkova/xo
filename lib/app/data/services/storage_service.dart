import 'dart:convert';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:xo/app/data/models/new_user/new_user.dart';

class StorageService extends GetxService {
  late GetStorage box;

  Future<StorageService> init() async {
    await GetStorage.init('main');
    box = GetStorage('box');
    return this;
  }

  Future<void> writeUserData(NewUser data) async {
    var jsonData = data.toJson();
    var stringData = jsonEncode(jsonData);
    await box.write('userData', stringData);
  }
     // box.write('userData', jsonEncode(data.toJson()));

 NewUser? readUserData() => box.read('userData');
  var = box.read<String>('userData');
  print(data);

}

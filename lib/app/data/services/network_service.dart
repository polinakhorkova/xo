import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:xo/app/data/models/new_user/new_user.dart';

class NetworkService extends GetxService {
  var client = Dio(BaseOptions(baseUrl: 'https://ttt.bulbaman.me/'));

  Future<NetworkService> init() async {
    return this;
  }

  Future<bool> registration(String nick) async {
    try {
      var response = await client.post("user/add/$nick");
      var newUser = NewUser.fromJson(response.data);
      print(response.data);
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }
}

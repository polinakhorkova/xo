import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/play/bindings/play_binding.dart';
import '../modules/play/views/play_view.dart';
import '../modules/registr/bindings/registr_binding.dart';
import '../modules/registr/views/registr_view.dart';
import '../modules/rooms/bindings/rooms_binding.dart';
import '../modules/rooms/views/rooms_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.ROOMS,
      page: () => const RoomsView(),
      binding: RoomsBinding(),
    ),
    GetPage(
      name: _Paths.PLAY,
      page: () => const PlayView(),
      binding: PlayBinding(),
    ),
    GetPage(
      name: _Paths.REGISTR,
      page: () => const RegistrView(),
      binding: RegistrBinding(),
    ),
  ];
}

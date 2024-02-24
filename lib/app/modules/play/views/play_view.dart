import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/play_controller.dart';

class PlayView extends GetView<PlayController> {
  const PlayView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('XO PLAY'),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(255, 102, 178, 1),
      ),
      body: Container(
        width: double.infinity,
        color: Color.fromRGBO(255, 204, 229, 1),
        
      ),
    );
  }
}

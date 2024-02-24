import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/rooms_controller.dart';

class RoomsView extends GetView<RoomsController> {
  final String nickname;

  RoomsView({required this.nickname});


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
        color: Color.fromRGBO(255, 204, 229, 1),child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Добро пожаловать, $nickname!', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400, fontSize: 40),),
            
          ],
        ),

        
      ),
    );
  }
}

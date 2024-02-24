import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:xo/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
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
        child:Center( 
          child: Container(
          
          width: 500,
          height: 285,
          decoration: BoxDecoration(color: Color.fromRGBO(255, 102, 178, 0.4), borderRadius: BorderRadius.circular(20)),
        child: Column(
          
          children: [
            SizedBox(height: 20),
            Text('Добро пожаловать!', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 25),),
         SizedBox(height: 20),
         Text('Введите ваш никнэйм', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 25),),
           SizedBox(height: 30),
           Container(
            width: 400,
            child:
           TextField( 
                      decoration: InputDecoration(
                       // prefixIcon: Icon(Icons.play_arrow),
                        labelText: "введите никнэйм",
                   border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                 ),
                 style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400, fontSize: 25),
           ),
           ),
          
          
           SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Get.toNamed(Routes.ROOMS), 
              child: 
              Container(
                width:110,
                height: 50,
                 padding: EdgeInsets.all(10),
                child: 
              Text('Играть', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 25),),),
        style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Color.fromRGBO(255, 102, 178, 1)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),),
            ],
        ),
        ),
        ),
      ),
    );
  }
}

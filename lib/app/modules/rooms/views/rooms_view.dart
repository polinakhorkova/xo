import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:xo/app/routes/app_pages.dart';

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
        color: Color.fromRGBO(255, 204, 229, 1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 30),
              child: Container(
               
                decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 102, 178, 0.4),
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    SingleChildScrollView(
                      child: Flexible(
                        child: Padding(
                          padding: EdgeInsets.only(
                              top: 15, left: 15, right: 15, bottom: 10),
                          child: RichText(
                      text: TextSpan(
                        
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Выполнен вход под ником ',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.w400,
                              )),
                          TextSpan(
                            text: '$nickname',
                            style: TextStyle(
                              color:  Color.fromRGBO(255, 102, 178, 1),
                              fontSize: 25,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 100),
                      child: ElevatedButton(
                         onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  content: Container(
                    width: 500,
            height: 250,
            decoration: BoxDecoration(
                color: Color.fromRGBO(255, 102, 178, 0.55 ),
                borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [ SizedBox(height: 20),
                      Text('Создание комнаты', style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 25),), SizedBox(height: 30),
                   Container(width: 400, child:  TextFormField(
                        
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          labelText: "Введите название",
                          labelStyle: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 25),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 25),
                      ),),   SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
              Padding(padding: EdgeInsets.only(left: 30),
               child:        
 ElevatedButton(
                  onPressed: () {},
                  child: Container(
                    width: 110,
                    height: 50,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Назад',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 25),
                    ),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Color.fromRGBO(255, 102, 178, 1)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),  ),  Padding(padding: EdgeInsets.only(right: 30),
               child:        
                 ElevatedButton(
                  onPressed: () {
                    },
                  child: Container(
                    width: 120,
                    height: 50,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Создать',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 25),
                    ),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Color.fromRGBO(255, 102, 178, 1)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),),
                        ],
                      ),],
                    ),
                  ),
                );
              },
            );
          },

                        child: Container(
                          width: 350,
                          height: 50,
                          padding: EdgeInsets.all(5),
                          child: Center(
                            child: Text(
                              'Создать комнату',
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color.fromRGBO(255, 102, 178, 1)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ),],
                ),
              ),
            ],
),],
        ),
      ),
    );
  }
}
 
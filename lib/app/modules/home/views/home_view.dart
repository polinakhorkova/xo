import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:xo/app/modules/rooms/views/rooms_view.dart';
import 'package:xo/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  //const HomeView({Key? key}) : super(key: key);
  TextEditingController _nicknameController = TextEditingController();

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
        child: Center(
          child: Container(
            width: 500,
            height: 250,
            decoration: BoxDecoration(
                color: Color.fromRGBO(255, 102, 178, 0.4),
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              children: [
                SizedBox(height: 20),
                Text(
                  'Добро пожаловать!',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 25),
                ),
                //SizedBox(height: 20),
                //Text('Зарегистрируйтесь', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 25),),
                SizedBox(height: 30),
                Container(
                  width: 400,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: _nicknameController,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          labelText: "Введите никнейм",
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
                      ),
                      // SizedBox(height: 30),
                      // TextFormField(
                      //   decoration: InputDecoration(
                      //     focusedBorder: OutlineInputBorder(
                      //         borderSide: BorderSide(color: Colors.white)),
                      //     enabledBorder: OutlineInputBorder(
                      //         borderSide: BorderSide(color: Colors.white)),
                      //     labelText: "Введите пароль",
                      //     labelStyle: TextStyle(
                      //         color: Colors.white,
                      //         fontWeight: FontWeight.w400,
                      //         fontSize: 25),
                      //     border: OutlineInputBorder(
                      //         borderRadius: BorderRadius.circular(10)),
                      //   ),
                      //   style: TextStyle(
                      //       color: Colors.white,
                      //       fontWeight: FontWeight.w400,
                      //       fontSize: 25),
                      // ),
                    ],
                  ),
                ),

                SizedBox(height: 25),
                ElevatedButton(
                  onPressed: () {
                    String nickname = _nicknameController.text;
                    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => RoomsView(nickname: nickname),
      ),
    );

                  },
                  child: Container(
                    width: 110,
                    height: 50,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Играть',
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
                ),
                SizedBox(height: 15),
                // TextButton(
                //   onPressed: () => Get.toNamed(Routes.REGISTR),
                //   child: Container(
                //     // width:110,
                //     height: 50,
                //     padding: EdgeInsets.all(10),
                //     child: Text(
                //       'Регистрация',
                //       style: TextStyle(
                //           color: Colors.white,
                //           fontWeight: FontWeight.w500,
                //           fontSize: 25),
                //     ),
                //   ),
                //   style: ButtonStyle(
                //       //  backgroundColor: MaterialStateProperty.all<Color>(
                //       //      Color.fromRGBO(255, 102, 178, 1)),
                //       // shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                //       //   RoundedRectangleBorder(
                //       //     borderRadius: BorderRadius.circular(10),
                //       //   ),
                //       // ),
                //       ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

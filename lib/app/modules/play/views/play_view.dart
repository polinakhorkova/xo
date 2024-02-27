import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/play_controller.dart';

void main() {
  runApp(PlayViewApp());
}

class PlayViewApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PlayView(),
    );
  }
}

class PlayView extends StatefulWidget {
  @override
  _PlayViewState createState() => _PlayViewState();
}

class _PlayViewState extends State<PlayView> {
  late List<List<String>> board;
  late String currentPlayer;

  @override
  void initState() {
    super.initState();
    initializeBoard();
  }

  void initializeBoard() {
    board = List.generate(3, (_) => List.generate(3, (_) => ''));
    currentPlayer = 'X';
  }

  void makeMove(int row, int col) {
    if (board[row][col] == '') {
      setState(() {
        board[row][col] = currentPlayer;
        currentPlayer = currentPlayer == 'X' ? 'O' : 'X';
      });
    }
  }

  void resetGame() {
    setState(() {
      initializeBoard();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('XO PLAY'),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
      ),
      body: Container(
        width: double.infinity,
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Игрок: $currentPlayer',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 40),
            Container( width: 300, height: 300,
              child:
            GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ),
              itemBuilder: (context, index) {
                int row = index ~/ 3;
                int col = index % 3;
                return GestureDetector(
                  onTap: () {
                    makeMove(row, col);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(), color: Colors.white),
                    child: Center(
                      child: Text(board[row][col]),
                    ),
                  ),
                );
              },
              itemCount: 9,
            ),),
            SizedBox(height: 40),
            ElevatedButton(
              
              onPressed: resetGame,
                child: Container(
                    width: 210,
                    height: 50,
                    padding: EdgeInsets.all(10),
              child: Text(
                'Начать заново',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w400,
                ),
              ),),
              style: ButtonStyle(
              
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.deepOrange),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
            ),
          ],
        ),
      ),
    );
  }
}

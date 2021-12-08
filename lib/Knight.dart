import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_chess_board/flutter_chess_board.dart';
import 'package:flutter_stateless_chessboard/flutter_stateless_chessboard.dart'
as cb;
import 'dart:math';

import 'utils.dart';
class Knight extends StatefulWidget {
  @override
  _Knight createState() => _Knight();
}

class _Knight extends State<Knight> {
  String _fen = 'rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR w KQkq - 0 1';
  String k;
  ChessBoardController controller = ChessBoardController();
  createAlertDialog(BuildContext context){
    return showDialog(context: context, builder: (context){
      return AlertDialog(
        content: Text(controller.toString()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final viewport = MediaQuery.of(context).size;
    final size = min(viewport.height-40, viewport.width-40);
    dynamic k = [];
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back, size: 30,),
          backgroundColor: Colors.black,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.startTop,

        body:Container(
          width: 300,
          height: 300,
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/Border.jpg"),
                  fit: BoxFit.cover)),
          child: ListView(

            padding: EdgeInsets.all(15.0),
            children: [
              SizedBox(height: 70),
              Center(child: Text('Knight', style: GoogleFonts.raleway(fontSize: 30, fontWeight:  FontWeight.w700, color: Colors.white),)),
              SizedBox(height: 40),
              Image.asset('assets/images/bishopMoves.jpg',height:300,width: 300,),
              SizedBox(height:10),
              Card(
                elevation: 0,
                color: Colors.transparent,
                child: Text('There are a total of 2 Knights on available to a side on the board. The Knights can hop over other pieces due to their strange ability to move.\n'
                    'Knights can move in an L shape. They can move 2 squares to the in any direction horizontally then 1 upwards or 1 downwards\n'
                    'Knights can also move 2 squares in any direction vertiaclly and 1 to the left or 1 to the right.\n'
                    'A Knight is worth 3 points.',textAlign: TextAlign.start,style: TextStyle(fontSize: 12, color: Colors.white),

                ),

              ),
              SizedBox(height: 40),
            ],
          ),
        )
    );
  }
}
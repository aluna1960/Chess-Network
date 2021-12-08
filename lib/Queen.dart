import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_chess_board/flutter_chess_board.dart';
import 'package:flutter_stateless_chessboard/flutter_stateless_chessboard.dart'
as cb;
import 'dart:math';

import 'utils.dart';
class Queen extends StatefulWidget {
  @override
  _Queen createState() => _Queen();
}

class _Queen extends State<Queen> {
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
              Center(child: Text('Queen', style: GoogleFonts.raleway(fontSize: 30, fontWeight:  FontWeight.w700, color: Colors.white),)),
              SizedBox(height: 40),
              Image.asset('assets/images/queenMoves.jpg',height:300,width: 300,),
              SizedBox(height:10),
              Card(
                elevation: 0,
                color: Colors.transparent,
                child: Text('The Queen is the most powerful piece on the board. The queen can move horizontally, vertically, an diagonally in any direction and can move as many spaces as it wants.\n'
                    'A queen is worth 9 points.'
                    ,textAlign: TextAlign.start,style: TextStyle(fontSize: 12, color: Colors.white),

                ),

              ),
              SizedBox(height: 40),
            ],
          ),
        )
    );
  }
}
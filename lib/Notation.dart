import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_chess_board/flutter_chess_board.dart';
import 'package:flutter_stateless_chessboard/flutter_stateless_chessboard.dart'
as cb;
import 'dart:math';

import 'utils.dart';
class Notation extends StatefulWidget {
  @override
  _Notation createState() => _Notation();
}

class _Notation extends State<Notation> {
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
              Center(child: Text('Chess Notation', style: GoogleFonts.raleway(fontSize: 30, fontWeight:  FontWeight.w700, color: Colors.white),)),
              SizedBox(height: 40),
              Image.asset('assets/images/ChessNotation.jpg',height:300,width: 300,),
              Text(
                '1.e4 e5 2.Nf3 Nc6 3.d4',textAlign: TextAlign.center,style: GoogleFonts.droidSerif(fontSize: 25, color: Colors.white),
              ),
              SizedBox(height:10),
              Card(
                elevation: 0,
                color: Colors.transparent,
                child: Text('The most common Notation is called Algebraic Notation. The board is a grid of numbers 1-8, and letters A-H. Each pieces have their own letters, \nK: King\nQ: Quuen\nR: Rook\nB: Bishop\nN: Knight\nP: Pawn (usually it is ommited)\nWhen a piece is moved, the notation should be the name of the piece and the square it moves to. When a piece is captured \'x\' is included. For example, Kc3 is a Knight moving to the square on the c file on the 3rd square.\n'
                    ' Another example is Kxc3, which indicated a Knight captured a pawn in the c file on the 3rd square.'
                    '\nThe notation of castling is written as O-O when castling Kingside and O-O-O when castling Queenside.'
                    '\nWhen the King is in check, it is denoted with the piece name, the location, and a \'+\' sign. For example if the White Queen were to put the Blac King in check at h5 it would be written as Qh5+.'
                    '\nLastly, when the King is checkmated, it will be denoted with the piece name, the location and a \'#\' sign such as \'Kc3\'#.' ,textAlign: TextAlign.start,style: TextStyle(fontSize: 12, color: Colors.white),

                ),

              ),
              SizedBox(height: 40),
              Center(child: Text('Try it out! Move pieces and learn notation\n\n', style: GoogleFonts.raleway(fontSize: 30, fontWeight:  FontWeight.w700, color: Colors.white),)),

              Center(
                child: SafeArea(

                  child: ChessBoard(
                    controller: controller,
                    enableUserMoves: true,

                    size: 350,
                    boardColor: BoardColor.green,
                  ),
                ),
              ),
              SizedBox(height: 20,),
              ValueListenableBuilder<Chess>(
                valueListenable: controller,
                builder: (context, game, _) {
                  return Text(
                    controller.getSan().fold(
                        '',
                        (previousValue, element) =>
                            previousValue + '\n' + (element ?? ''),
                        ), style: TextStyle(color: Colors.white),

                    );
                  },
                ),
              ElevatedButton(onPressed: (){
                controller.loadPGN('demo PGN');

              }, child: Text('Reset'),
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                onPrimary: Colors.black,
                shadowColor: Colors.black,
                enabledMouseCursor: SystemMouseCursors.basic,
              ))
            ],
          ),
        )
    );
  }
}
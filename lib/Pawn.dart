import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_chess_board/flutter_chess_board.dart';
import 'package:flutter_stateless_chessboard/flutter_stateless_chessboard.dart'
as cb;
import 'dart:math';

import 'utils.dart';
class Pawn extends StatefulWidget {
  @override
  _Pawn createState() => _Pawn();
}

class _Pawn extends State<Pawn> {
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
              Center(child: Text('Pawn', style: GoogleFonts.raleway(fontSize: 30, fontWeight:  FontWeight.w700, color: Colors.white),)),
              SizedBox(height: 40),
              Image.asset('assets/images/pawnMoves.jpg',height:300,width: 300,),
              SizedBox(height:10),
              Card(
                elevation: 0,
                color: Colors.transparent,
                child: Text('Pawns are the weakest of the pieces. They can move forward 1 or 2 square when initially moved; after that they can only move 1 square forward.\n'
                    'When a pawn takes another piece, it can only take diagonally.\n\n\n\n'
                    ,textAlign: TextAlign.start,style: TextStyle(fontSize: 16, color: Colors.white),

                ),

              ),
              Image.asset('assets/images/enPassantYeet.PNG', height: 300,width: 300,),
              SizedBox(height: 40),
              Text('En Passant\n\n', textAlign: TextAlign.start, style: TextStyle(fontSize: 22,color:Colors.white),),
              Card(
                elevation: 0,
                color: Colors.transparent,
                child: Text(
                    'There is also another move available to a pawn called En Passant. It is a special pawn capture that can only occur immediately after a pawn makes a move of two squares from its starting square, and it could have been captured by an enemy pawn had it advanced only one square.\n'
                    'A Pawn is worth 1 point.\n\n',textAlign: TextAlign.start,style: TextStyle(fontSize: 16, color: Colors.white),

                ),

              ),

            ],
          ),
        )
    );
  }
}
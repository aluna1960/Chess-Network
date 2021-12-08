import 'dart:math';
import 'package:google_fonts/google_fonts.dart';

import 'package:flutter/material.dart';
import 'package:flutter_stateless_chessboard/flutter_stateless_chessboard.dart'
    as cb;

import 'utils.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _fen = 'rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR w KQkq - 0 1';

  @override
  Widget build(BuildContext context) {
    final viewport = MediaQuery.of(context).size;
    final size = min(viewport.height, viewport.width);

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.arrow_back, size: 30,),
        backgroundColor: Colors.black,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,

      body: Container(
        width: 300,
        height: 300,
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/Border.jpg"),
                fit: BoxFit.cover)),
        child: Column(
          children: [
            Text('\n\n\n\n\n\n\n\n\n\n'
            ),
            Text('Practice chess!',style: GoogleFonts.raleway(fontSize: 29,color:Colors.white)),
            Text('\n\n\n'),
            cb.Chessboard(
              fen: _fen,
              size: 300,
              orientation: cb.Color.WHITE,
              onMove: (move) {
                Future.delayed(Duration(milliseconds: 300)).then((_) {
                  final computerMove = getRandomMove(_fen);
                  final computerFen = makeMove(_fen, computerMove);

                  if (computerMove != null && computerFen != null) {
                    setState(() {
                      _fen = computerFen;
                    });
                  }
                });
                final nextFen = makeMove(_fen, {
                  'from': move.from,
                  'to': move.to,
                  'promotion': 'q',
                });

                if (nextFen != null) {
                  setState(() {
                    _fen = nextFen;
                  });


                }
              },


            ),

          ],
        ),
      ),
    );
  }
}

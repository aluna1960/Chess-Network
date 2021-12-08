import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class French extends StatelessWidget {
  French({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          child: Column(
            children: [
              SizedBox(height: 70),
              Text('French Defense', style: GoogleFonts.raleway(fontSize: 30, fontWeight:  FontWeight.w700, color: Colors.white),),
              SizedBox(height: 40),
              Image.asset('assets/images/FrenchDefenseG.gif',height:300,width: 300,),
              Text(
                '1.e4 e6 2.d4 d5 ',textAlign: TextAlign.center,style: GoogleFonts.droidSerif(fontSize: 25, color: Colors.white),
              ),
              SizedBox(height:40),
              Card(
                elevation: 0,
                color: Colors.transparent,
                child: Text('Black has more space on the queenside, so tends to focus on that side of the board, almost always playing ...c7–c5 at some point to attack White\'s pawn chain at its base, and may follow up by advancing his a- and b-pawns.',textAlign: TextAlign.center,style: TextStyle(fontSize: 12, color: Colors.white),
                ),
              )
            ],
          ),
        )
    );
  }
}
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class KingsGambit extends StatelessWidget {
  KingsGambit({Key key}) : super(key: key);

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
              Text('Kings Gambit', style: GoogleFonts.raleway(fontSize: 30, fontWeight:  FontWeight.w700, color: Colors.white),),
              SizedBox(height: 40),
              Image.asset('assets/images/KingsGambitG.gif',height:300,width: 300,),
              Text(
                '1.e4 e5 2.f4',textAlign: TextAlign.center,style: GoogleFonts.droidSerif(fontSize: 25, color: Colors.white),
              ),
              SizedBox(height:40),
              Card(
                elevation: 0,
                color: Colors.transparent,
                child: Text('White offers a pawn to divert the black e-pawn. The plan is for black to develop and take back the lost pawn',textAlign: TextAlign.center,style: TextStyle(fontSize: 12, color: Colors.white),
                ),
              )
            ],
          ),
        )
    );
  }
}
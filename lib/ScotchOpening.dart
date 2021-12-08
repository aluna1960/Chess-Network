import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Scotch extends StatelessWidget {
  Scotch({Key key}) : super(key: key);

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
              Text('Scotch Opening', style: GoogleFonts.raleway(fontSize: 30, fontWeight:  FontWeight.w700, color: Colors.white),),
              SizedBox(height: 40),
              Image.asset('assets/images/ScotchGameG.gif',height:300,width: 300,),
              Text(
                '1.e4 e5 2.Nf3 Nc6 3.d4',textAlign: TextAlign.center,style: GoogleFonts.droidSerif(fontSize: 25, color: Colors.white),
              ),
              SizedBox(height:40),
              Card(
                elevation: 0,
                color: Colors.transparent,
                child: Text('White aims to dominate the centre by exhanging their d-pawn for Blacks e-pawn. This opening lost its favor among top player but is still useful to practice',textAlign: TextAlign.center,style: TextStyle(fontSize: 12,color: Colors.white),

              ),
              )
            ],
          ),
        )
    );
  }
}
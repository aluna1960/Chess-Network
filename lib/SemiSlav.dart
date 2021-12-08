import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SemiSlav extends StatelessWidget {
  SemiSlav({Key key}) : super(key: key);

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
              Text('Semi-slav Defense', style: GoogleFonts.raleway(fontSize: 30, fontWeight:  FontWeight.w700, color: Colors.white),),
              SizedBox(height: 40),
              Image.asset('assets/images/semiSlavG.gif',height:300,width: 300,),
              Text(
                '1.d4 d5 2.c4 c6 3.Nf3 Nf6 4.Nc3 e6'
                ,textAlign: TextAlign.center,style: GoogleFonts.droidSerif(fontSize: 25, color: Colors.white),
              ),
              SizedBox(height:40),
              Card(
                elevation: 0,
                color: Colors.transparent,
                child: Text('It is possible to reach the Semi-Slav through many move orders. White may start the game with either 1.d4, 1.Nf3 or even 1.c4, keeping the possibility of a Semi-Slav open. Black can choose different combinations of ...d5, ...c6, ...e6 and ...Nf6 as well in order to avoid certain variations or to open up some new opportunities of his own. This chapter looks at the first moves of the game from Black\'s point of view, assuming that he would prefer to play the Semi-Slav.',textAlign: TextAlign.center,style: TextStyle(fontSize: 12,color: Colors.white),
                ),
              )
            ],
          ),
        )
    );
  }
}
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Slav extends StatelessWidget {
  Slav({Key key}) : super(key: key);
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
              Text('Slav Defense', style: GoogleFonts.raleway(fontSize: 30, fontWeight:  FontWeight.w700, color: Colors.white),),
              SizedBox(height: 40),
              Image.asset('assets/images/slavDefense.gif',height:300,width: 300,),
              Text(
                '1.e4 c6 2.d4 d5',textAlign: TextAlign.center,style: GoogleFonts.droidSerif(fontSize: 25, color: Colors.white),
              ),
              SizedBox(height:40),
              Card(
                elevation: 0,
                color: Colors.transparent,
                child: Text('The Slav can be entered by many move orders. The possibilities include 1.d4 d5 2.Nf3 Nf6 3.c4 c6, 1.Nf3 d5 2.c4 c6 3.d4 Nf6, and so on. The Slav is one of the primary defenses to the Queen\'s Gambit. Although it was analyzed as early as 1590, it was not until the 1920s that it started to be explored extensively.',textAlign: TextAlign.center,style: TextStyle(fontSize: 12,color: Colors.white),
                ),
              )
            ],
          ),
        )
    );
  }
}
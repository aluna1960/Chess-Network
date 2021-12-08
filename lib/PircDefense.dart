import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Pirc extends StatelessWidget {
  Pirc({Key key}) : super(key: key);

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
              Text('Pirc Defense', style: GoogleFonts.raleway(fontSize: 30, fontWeight:  FontWeight.w700, color: Colors.white),),
              SizedBox(height: 40),
              Image.asset('assets/images/pircDefenceG.gif',height:300,width: 300,),
              Text(
                '1.e4 d6 2.d5 Kf6 3.Kc3 Bg7',textAlign: TextAlign.center,style: GoogleFonts.droidSerif(fontSize: 25, color: Colors.white),
              ),
              SizedBox(height:40),
              Card(
                elevation: 0,
                color: Colors.transparent,
                child: Text('This is the most commonly played line after Black responds to 1.e4 with 1...d6. It has been claimed to give rise to somewhat interesting and exciting games,where Black will have counterplay but has to be cautious about playing too passively.',textAlign: TextAlign.center,style: TextStyle(fontSize: 12,color: Colors.white),
                ),
              )
            ],
          ),
        )
    );
  }
}
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
              Text('Nimzo Indian Defense', style: GoogleFonts.raleway(fontSize: 30, fontWeight:  FontWeight.w700, color: Colors.white),),
              SizedBox(height: 40),
              Image.asset('assets/images/.gif',height:300,width: 300,),
              Text(
                '1.d4 Nf6 2.c4 e6 3.Nc3 Bb4',textAlign: TextAlign.center,style: GoogleFonts.droidSerif(fontSize: 25, color: Colors.white),
              ),
              SizedBox(height:40),
              Card(
                elevation: 0,
                color: Colors.transparent,
                child: Text('Unlike most Indian openings, the Nimzo-Indian does not involve an immediate fianchetto, although Black often follows up with ...b6 and ...Bb7. By pinning White\'s knight, Black prevents the threatened 4.e4 and seeks to inflict doubled pawns on White.',textAlign: TextAlign.center,style: TextStyle(fontSize: 12,color: Colors.white),
                ),
              )
            ],
          ),
        )
    );
  }
}
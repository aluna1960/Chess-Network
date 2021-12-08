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
              Text('Sicilian Defense', style: GoogleFonts.raleway(fontSize: 30, fontWeight:  FontWeight.w700, color: Colors.white),),
              SizedBox(height: 40),
              Image.asset('assets/images/sicilianDefG.gif',height:300,width: 300,),
              Text(
                '1.e4 c5 2.Nc3 Nc6 3.g3 g6 4.Bg2 Bg7 5.d3 d6',textAlign: TextAlign.center,style: GoogleFonts.droidSerif(fontSize: 25, color: Colors.white),
              ),
              SizedBox(height:40),
              Card(
                elevation: 0,
                color: Colors.transparent,
                child: Text('The Sicilian is the most popular and best-scoring response to White\'s first move 1.e4.  New In Chess stated in its 2000 Yearbook that of the games in its database, White scored 56.1% in 296,200 games beginning 1.d4, but 54.1% in 349,855 games beginning 1.e4, mainly because the Sicilian held White to a 52.3% score in 145,996 games.',textAlign: TextAlign.center,style: TextStyle(fontSize: 12,color: Colors.white),
                ),
              )
            ],
          ),
        )
    );
  }
}
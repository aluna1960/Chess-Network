import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class London extends StatelessWidget {
  London({Key key}) : super(key: key);

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
              Text('Four Knights Game', style: GoogleFonts.raleway(fontSize: 30, fontWeight:  FontWeight.w700, color: Colors.white),),
              SizedBox(height: 40),
              Image.asset('assets/images/FourKnightsG.gif',height:300,width: 300,),
              Text(
                '1.d4 d5 2.Nc3 Nf6 3. Bf4',textAlign: TextAlign.center,style: GoogleFonts.droidSerif(fontSize: 25, color: Colors.white),
              ),
              SizedBox(height:40),
              Card(
                elevation: 0,
                color: Colors.transparent,
                child: Text('A chess opening is considered a system opening that can be used against any black defense and thus comprises a smaller body of opening theory.',textAlign: TextAlign.center,style: TextStyle(fontSize: 12),

              ),
              )
            ],
          ),
        )
    );
  }
}
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:auto_size_text/auto_size_text.dart';

class ChessOpenings extends StatelessWidget {
  ChessOpenings({Key key}) : super(key: key);
  var openings = ['assets/images/winawer-variation-in-the-french-defense.png','assets/images/scotchOpening.png','assets/images/nizmoNoGif.jpg','assets/images/nizmoNoGif.jpg'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset('assets/images/cool black pawn opening.jpg', height: 200, width: 300,),
          Text('Top Chess Openings',style: GoogleFonts.droidSerif(fontSize: 30),),
          Expanded(
            child: ListView.builder(
                itemCount: 4,
                itemBuilder: (context,index) {
                  return GestureDetector(
                    onTap: (){

                    },
                    child: Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(80.0)),
                          boxShadow:[
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 5,
                            offset: Offset(0,3),

                          )
                        ]
                        ),
                        child: Card(
                          child: Row(
                            children: <Widget>[
                              Container(
                                width: 100,
                                height: 100,
                                child: Expanded(
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Image.asset(openings[index]),

                                    ],
                                  )
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,

                                children: [
                                  AutoSizeText(
                                    'French Defense Opening ya know',style: TextStyle(fontSize: 25.0,color: Colors.black),maxLines: 2,minFontSize: 10,
                                  ),
                                  SizedBox(height: 50),
                                  Container(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      'Check this out',
                                      style: TextStyle(fontSize: 10,color: Colors.black),
                                    )
                                  )


                                ]
                              )
                            ],
                          )
                        )
                      ),
                    ),
                  );
                })
          )
        ],
      )
    );
  }
}

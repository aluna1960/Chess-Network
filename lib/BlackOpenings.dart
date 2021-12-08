import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'Four horse.dart';
import 'Kings Gambit.dart';
import 'London.dart';
import 'RuyLopez.dart';
import 'FrenchOpening.dart';
import 'SlavDefense.dart';
import 'SlavDefense.dart';
import 'PircDefense.dart';

class BlackOpenings extends StatelessWidget {
  BlackOpenings({Key key}) : super(key: key);
  var openings = ['assets/images/semiSlavDef.PNG','assets/images/slavDefense.PNG','assets/images/SicilianDefense.PNG','assets/images/FrenchWinawerVar.PNG','assets/images/nimzoIndianDef.PNG','assets/images/pircDefense.PNG'];
  var names = ['Semi-slav Defense', 'Slav Defense', 'Sicilian Defense','French Defense','Nimzo Indian Defense','Pirc Defense'];
  var op = [Ruy(),Slav(),FourKnights(), French(),London(),Pirc()];
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

        body: Container(
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/Border.jpg"),
                  fit: BoxFit.cover)),
          child: Column(
            children: [
              Image.asset('assets/images/backgroundPieces.jpg', height: 200, width: 300,),
              Text('Top Chess Openings',style: GoogleFonts.raleway(fontSize: 30, color: Colors.white,fontWeight: FontWeight.w700,),),
              Expanded(
                  child: ListView.builder(
                      itemCount: openings.length,
                      itemBuilder: (context,index) {
                        return GestureDetector(
                          onTap: (){

                            Navigator.push(context, MaterialPageRoute(builder: (context) => op[index]));

                          },
                          child: Expanded(
                            child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(12.0)),
                                    boxShadow:[
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.5),
                                        spreadRadius: 5,
                                        blurRadius: 5,
                                        offset: Offset(0,3),

                                      )
                                    ]
                                ),
                                child: Card(
                                    elevation: 0,
                                    color: Colors.transparent,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(6)),
                                    child: Row(
                                      children: <Widget>[
                                        Container(
                                          width: 100,
                                          height: 100,
                                          child: Expanded(
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  ClipRRect(
                                                    borderRadius: BorderRadius.circular(12.0),
                                                    child: Image.asset(openings[index],height:80,width: 80,),
                                                  )

                                                ],
                                              )
                                          ),
                                        ),
                                        Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,

                                            children: [
                                              AutoSizeText(
                                                names[index],style: GoogleFonts.raleway(fontSize: 25.0,color: Colors.white),maxLines: 2,minFontSize: 10,
                                              ),
                                              SizedBox(height: 50),
                                              Container(
                                                  padding: EdgeInsets.all(8.0),
                                                  child: Text(
                                                    'Check this out',
                                                    style: GoogleFonts.raleway(fontSize: 10,color: Colors.black),
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
          ),
        )
    );
  }
}
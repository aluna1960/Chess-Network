import 'package:cheon_project/ChessOpenings.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Bishop.dart';
import 'ChessOpeningsColor.dart';
import 'Knight.dart';
import 'Pawn.dart';
import 'Queen.dart';
import 'Rook.dart';
import 'home_page.dart';
import 'Notation.dart';
import 'King.dart';
class Learn extends StatefulWidget {
  Learn({Key key}) : super(key: key);

  @override
  _LearnState createState() => _LearnState();
}

class _LearnState extends State<Learn> {
  var chessImages = ['assets/images/notaKing.png','assets/images/kingLearn.PNG','assets/images/realQueenL.PNG','assets/images/bishopLearn.png','assets/images/pawnLearn.PNG','assets/images/rook.png','assets/images/knightLearn2.png'];
  var iconSentence = ['Notation','King','Queen','Bishop','Pawn','Rook','Knight'];
  //var description = ['Learn about famous chess openings', 'Learn about chess notation', 'Practice on your own!', 'Learn the basics about chess and its pieces'];
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width *0.6;

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
            Text('Chess Network',style: GoogleFonts.raleway(fontSize: 30, color: Colors.white,fontWeight: FontWeight.w700,),),
            Expanded(
              child: ListView.builder(
                  itemCount: 7,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                        onTap: () {
                          if(index == 0){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Notation()));
                          }
                          if(index == 1){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => King()));
                          }
                          if(index == 2){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Queen()));
                          }
                          if(index == 3){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Bishop()));
                          }
                          if(index == 4){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Pawn()));
                          }
                          if(index == 5){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Rook()));
                          }
                          if(index == 6){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Knight()));
                          }
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(20.0)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  spreadRadius: 5,
                                  blurRadius: 5,
                                  offset: Offset(0,3),
                                )
                              ]
                          ),

                          child: Card(
                              elevation: 0,
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    width: 100,
                                    height: 100,
                                    /*decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                                  color: Colors.black,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.5),
                                        spreadRadius: 5,
                                        blurRadius: 7,
                                        offset: Offset(0,3),
                                      )
                                    ]
                                ),*/
                                    child: Expanded(
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          ClipRRect(
                                              borderRadius: BorderRadius.circular(12.0),
                                              child: Image.asset(chessImages[index],height: 80,width: 80,)),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                      padding: EdgeInsets.all(10.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,

                                        children: [
                                          Text(
                                              iconSentence[index],
                                              style: GoogleFonts.raleway(
                                                  fontSize: 20.0,
                                                  color: Colors.black)
                                          ),

                                          SizedBox(
                                            height:25,
                                          ),
                                          Container(
                                            padding: EdgeInsets.all(8.0),
                                            child: Text(
                                              '',
                                              style: GoogleFonts.raleway(fontSize: 10, color: Colors.white),
                                            ),
                                          )
                                        ],
                                      )
                                  ),

                                ],
                              )
                          ),
                        ));
                  }
              ),
            ),
          ],
        ),
      ),
    );
  }
}

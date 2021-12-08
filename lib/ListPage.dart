import 'package:cheon_project/ChessOpenings.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'ChessOpeningsColor.dart';
import 'home_page.dart';
import 'LearningWindow.dart';
class ListV extends StatefulWidget {
  const ListV({Key key}) : super(key: key);

  @override
  _ListVState createState() => _ListVState();
}

class _ListVState extends State<ListV> {
  var chessImages = ['assets/images/Openings.png','assets/images/playChess2.PNG','assets/images/learn2.PNG'];
  var iconSentence = ['Chess Openings', 'Practice Chess Moves', 'Learn Chess'];
  var description = ['Learn about famous chess openings', 'Practice on your own!', 'Learn the basics about chess and its pieces'];
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width *0.6;

    return Scaffold(
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
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        if(index == 0){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => OpeningColor()));
                        }
                        if(index == 1){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                        }
                        if(index == 2){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Learn()));

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
                          color: Colors.transparent,
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
                                            color: Colors.white)
                                    ),

                                    SizedBox(
                                      height:25,
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text(
                                        description[index],
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

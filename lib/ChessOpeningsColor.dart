import 'package:cheon_project/WhiteOpenings.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'BlackOpenings.dart';

class OpeningColor extends StatelessWidget {
  OpeningColor({Key key}) : super(key: key);
  var openColor = [WhiteOpenings(), BlackOpenings()];
  var i = 0;
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

      body:
        Container(
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/Border.jpg"),
                  fit: BoxFit.cover)),
          child: Column(
            children: [

              SizedBox(height:50),
              Image.asset('assets/images/backgroundPieces.jpg',height:150,width:250),
              Text('Opening Color Select', style: GoogleFonts.raleway(fontSize: 30,color: Colors.white)),
              SizedBox(height: 60,),
              GestureDetector(
                onTap: (){

                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => WhiteOpenings()));

                },
                child: Card(
                  color: Colors.black,

                  child:Row(

                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset('assets/images/newWhiteK.png',height: 100,width: 100,)
                      ),
                      SizedBox(width: 50,),
                      Text('White',
                          style: GoogleFonts.raleway(
                              fontSize: 20.0,
                              color: Colors.white)
                      ),
                    ],
                  ),
                  elevation: 5,
                  margin: EdgeInsets.all(10),
                ),

              ),
              GestureDetector(
                onTap: (){

                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => BlackOpenings()));

                },
                child: Card(
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset('assets/images/blackK.PNG', height: 100,width: 100,)
                      ),
                      SizedBox(width: 50,),
                      Text('Black',
                          style: GoogleFonts.raleway(
                              fontSize: 20.0,
                              color: Colors.black)
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
    );
  }
}

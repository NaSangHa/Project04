import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FavoriteforSetting extends StatelessWidget {
  final String? value;
  const FavoriteforSetting({Key? key,required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
      Stack(
        children: <Widget>[
          GestureDetector(
            onTap: () {}, // SEND TO TIMELINE CONTENT
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              height: 116,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  color: Colors.blueAccent[100]),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(22),
                    ),
                    width: 360,
                    height: 94,
                    child: Column(
                    children: [            
                      Container(
                        alignment: Alignment.center,
                        height: 35,
                        width: 360,
                        decoration: BoxDecoration(
                          
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(18),topRight: Radius.circular(18)),
                          color: Colors.blueAccent,
                        ),
                        child :
                         Text('관심 목록',
                         
                         style: GoogleFonts.robotoMono(
                          fontSize:24,color: Colors.white
                         ),),                        
                      ),
                      SizedBox(height: 5,),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10 ,vertical: 5),
                        height: 45,
                        alignment: Alignment.topRight,
                        child: 
                          ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                            Container(
                              height: 40,
                              alignment: Alignment.center,
                              padding: EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.green[300],
                                
                              ),
                              child: Text('$value',
                              style: GoogleFonts.robotoMono(
                                  fontSize:18,
                                  ),
                                ),
                            ),

                            Container(
                              height: 40,
                              alignment: Alignment.center,
                              padding: EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.green[300],
                                
                              ),
                              child: Text('$value',
                              style: GoogleFonts.robotoMono(
                                  fontSize:18,
                                  ),
                                ),
                            ),

                                                        ],
                          ),
                      ),
                ]
                    ),
              ),
        ]
              ),
            ),
          ),
        ]
    );
  }
}
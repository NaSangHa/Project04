import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class TextBoxforSetting extends StatelessWidget {
  final String? value;
  const TextBoxforSetting({Key? key,required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
      Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            height: 200,
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
                  width: 340,
                  height: 178,
                  child: 
                  Column(
                    children: [            
                      Container(
                        alignment: Alignment.center,
                        height: 35,
                        width: 340,
                        decoration: BoxDecoration(
                          
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(18),topRight: Radius.circular(18)),
                          color: Colors.blueAccent,
                        ),
                        child :
                         Text('자기 소개',
                         
                         style: GoogleFonts.robotoMono(
                          fontSize:24,color: Colors.white
                         ),),                        
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text('$value',
                        style: GoogleFonts.robotoMono(
                            fontSize:18,
                           ),),
                      ),
                    ],
                  ),
                ),
              ]
            ),
          ),
        ]
    );
  }
}
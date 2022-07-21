import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TimeLineforSetting extends StatelessWidget {
  final String? value;
  const TimeLineforSetting({Key? key,required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
      Column(
        children: <Widget>[
          GestureDetector(
            onTap: () {}, // SEND TO TIMELINE CONTENT
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              height: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  color: Colors.blueAccent[100]),
              child: Row(
                children: [
                  Flexible(
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(22),
                      ),
                      width: 360,
                      height: 278,
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
                           Text('내 활동 보기',

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
                ]
                      ),
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
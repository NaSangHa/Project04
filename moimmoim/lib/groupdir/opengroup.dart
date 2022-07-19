import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:projectapp/controller/groupapi_con.dart';
import 'package:projectapp/models/groupdata.dart';

class OpenGroup extends StatefulWidget {
  final String? mmember;
  // final 
  const OpenGroup({Key? key, required this.mmember}) : super(key: key);


  @override
  State<OpenGroup> createState() => _OpenGroupState();
}

class _OpenGroupState extends State<OpenGroup> {
  
  @override
  void initState() {
    super.initState();
    
  }
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Expanded(
        child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        color: Colors.grey[400],
                      ),
                      alignment: Alignment.center,
                      width: 145,
                      height: 48,
                      child: Text(
                        '공개 모임',
                        style: GoogleFonts.robotoMono(
                          textStyle: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 166 * 2,
                child: ListView.builder(           // 리스트 형식으로 값 출력
                  itemCount: 2, 
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context,index){
                    return Column(
                      children: [
                        Center(
                          child: Flexible(
                            child: Container(
                              margin: EdgeInsets.only(top: 10,bottom: 2),
                              height: 160.0,
                              child: Stack(
                                children: <Widget>[
                                  GestureDetector(
                                    onTap: () { }, // SEND TO Content " 
                                    child: Container(
                                      margin: EdgeInsets.symmetric(horizontal: 15),
                                      height: 136,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(22),
                                          color: Colors.grey),
                                      child: Row(
                                        children: [
                                          //사진들어가는 컨테이너
                                          Container(
                                            margin: EdgeInsets.symmetric(horizontal: 10),
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.circular(22),
                                              ),
                                            height: 120,
                                            width: 120,
                                          ),
      
                                          //내용 들어가는 컨테이너
                                          Flexible(
                                            flex:7,
                                            fit : FlexFit.tight,
                                            child: Container(
                                              margin: EdgeInsets.only(right: 10),
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.only(
                                                    topLeft: Radius.circular(12),
                                                    topRight: Radius.circular(12),
                                                    bottomLeft: Radius.circular(12),
                                                    bottomRight: Radius.circular(12)),
                                              ),
                                              height: 120,
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  //실제 데이터 들어가야함
                                                  Text("dd"
                                                    ,style: GoogleFonts.robotoMono(fontSize: 22),
                                                  ),
                                                  Text(
                                                    "text",
                                                    style: GoogleFonts.robotoMono(),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 8,
                                    right: 28,
                                    child: Container(
                                      alignment: Alignment.center,
                                      padding: EdgeInsets.symmetric(horizontal: 5),
                                      decoration: BoxDecoration(
                                        color: Colors.amber,
                                        borderRadius: BorderRadius.circular(22),
                                      ),
                                      height: 20,
                                      child:  Text("Category"),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                   } )
                )
            ]
          ),
      ),
    );
  }
}

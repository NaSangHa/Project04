import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FriendGroup extends StatefulWidget {
  final String? mmember;
  const FriendGroup({Key? key,required this.mmember}) : super(key: key);

  @override
  State<FriendGroup> createState() => _FriendsGroupState();
}

class _FriendsGroupState extends State<FriendGroup> {
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
                      ' 친구 모임 ',
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
              child: ListView(
                // 리스트 형식으로 값 출력
                scrollDirection: Axis.vertical,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(
                      vertical: 10,
                    ),
                    height: 160.0,
                    child: Stack(
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {}, // SEND TO LIST!!!!!
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 15),
                            height: 136,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(22),
                                color: Colors.grey),
                            child: Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.symmetric(horizontal: 10),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(22),
                                  ),
                                  width: 120,
                                  height: 120,
                                ),
                                Flexible(
                                  flex:7,
                                  fit: FlexFit.tight,
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
                                    width: 229,
                                    height: 120,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        //실제 데이터 들어가야함
                                        Text(
                                          "name",
                                          style: GoogleFonts.robotoMono(fontSize: 22),
                                        ),
                                        Text(
                                          "date:",
                                          style: GoogleFonts.robotoMono(),
                                        ),
                                        Text(
                                          "place:",
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
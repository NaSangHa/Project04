import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class FriendPage extends StatefulWidget {
  const FriendPage({Key? key}) : super(key: key);

  @override
  State<FriendPage> createState() => _FriendPageState();
}

class _FriendPageState extends State<FriendPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(10),
              bottomLeft: Radius.circular(10)),
        ),
        toolbarHeight: 60,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GestureDetector(
              onTap: () {},
              child: Padding(
                padding: EdgeInsets.all(0.0),
                child: Image(
                  image: AssetImage(
                    'assets/images/logo.png',
                  ),
                  fit: BoxFit.fitHeight,
                  height: 60,
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: Text(
                style: GoogleFonts.robotoMono(
                  fontSize: 23,
                ),
                "친구 모임",
              ),
            ),
          ],
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(FontAwesomeIcons.bell)),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
      floatingActionButton: FloatingActionButton.large(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.list),
            const Text("글쓰기"),
          ],
        ),
        onPressed: () {},
      ),
      body: Column(
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
              color: Colors.redAccent,
            ),
          ),
          Container(
            height: 100,
          ),
          Container(
            height: 100,
          ),
          Container(
            height: 700,
            child: ListView(),
          ),
          Row(
            children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.amber,
              )
            ],
          )
        ],
      ),
    );
  }
}

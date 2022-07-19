import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:projectapp/groupdir/createfriend.dart';
import 'package:projectapp/groupdir/creategroup.dart';
import 'package:projectapp/groupdir/friendgroup.dart';
import 'package:projectapp/groupdir/gprofile.dart';
import 'package:projectapp/groupdir/opengroup.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projectapp/widget/actionbutton.dart';
import 'package:projectapp/widget/expandable_fab.dart';

class Group extends StatefulWidget {
  const Group({Key? key}) : super(key: key);

  @override
  State<Group> createState() => _GroupState();
}

class _GroupState extends State<Group> with SingleTickerProviderStateMixin {
  final _counter = ValueNotifier(0);
  var index = <String>['모두 모임', '친구모임'];

  final List people = ['name1', 'name2', 'name1', 'name2', 'name1', 'name2'];

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
                "내 모임",
              ),
            ),
          ],
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(FontAwesomeIcons.bell)),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
      floatingActionButton: ExpandableFab(
        distance: 12.0,
        children: [
          ActionButton(
            icon: IconButton(
              icon: const Icon(Icons.person),
              onPressed: () => {CreateFriend()},
            ),
          ),
          ActionButton(
            icon: IconButton(
              icon: const Icon(Icons.group),
              onPressed: () => {CreateGroup()},
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: people.length,
                itemBuilder: ((context, index) =>
                    GroupProfile(gname: people[index])),
              ),
            ),
            Container(
              child: OpenGroup(),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: FriendGroup(),
            ),
          ],
        ),
      ),
    );
  }
}

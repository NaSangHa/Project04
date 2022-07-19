import 'package:flutter/material.dart';
import 'package:projectapp/groupdir/createfriend.dart';
import 'package:projectapp/groupdir/creategroup.dart';
import 'package:projectapp/groupdir/friendgroup.dart';
import 'package:projectapp/groupdir/groupprofile.dart';
import 'package:projectapp/groupdir/opengroup.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projectapp/models/groupdata.dart';
import 'package:projectapp/widget/actionbutton.dart';
import 'package:projectapp/widget/expandable_fab.dart';
import 'package:provider/provider.dart';

class Group extends StatefulWidget {
  const Group({Key? key}) : super(key: key);

  @override
  State<Group> createState() => _GroupState();
}

class _GroupState extends State<Group> with SingleTickerProviderStateMixin {  
  final _counter = ValueNotifier(0);
  
  var index = ['모두 모임', '친구모임'];

  final List<GroupData> mmember ;
  
  bool _havegroup = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  
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
            OpenGroup(mmember: '$mmember'),

            SizedBox(
              height: 20,
            ),
            FriendGroup(mmember: '$mmember'),
          ],
        ),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: 
      ExpandableFab(
        distance: 180.0,
        children: [
          ActionButton(
            onPressed: () {Navigator.push(    context,    MaterialPageRoute(builder: (context) => CreateFriend()),  );},
            icon: const Icon(Icons.person, color: Colors.white,),
          ),
          ActionButton(
            onPressed: () {Navigator.push(context,MaterialPageRoute(builder:(context) => CreateGroup()));},
            icon: Icon(Icons.group,color: Colors.white,),
          ),
        ],
      ),
    );
  }
}

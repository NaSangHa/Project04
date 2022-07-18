import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SetCateButton extends StatefulWidget {
  const SetCateButton({Key? key}) : super(key: key);

  @override
  State<SetCateButton> createState() => _SetCateButtonState();
}

class _SetCateButtonState extends State<SetCateButton> {
  List<Map> categories = [
    {'name': 'work', 'iconPath': 'assets/icons/suitcase.png'},
    {'name': 'travel', 'iconPath': 'assets/icons/luggage.png'},
    {'name': 'book', 'iconPath': 'assets/icons/open-book.png'},
    {'name': 'game', 'iconPath': 'assets/icons/game-control.png'},
    {'name': 'music', 'iconPath': 'assets/icons/headphones.png'},
    {'name': 'friend', 'iconPath': 'assets/icons/friendship.png'},
    {'name': 'art', 'iconPath': 'assets/icons/fine-arts.png'},
    {'name': 'free', 'iconPath': 'assets/icons/free.png'},
  ];

  Color primaryBlue = Color(0xFF586894);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(              
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return Container(
              alignment: Alignment.center,
              child: Column(children: [
                GestureDetector(
                  onTap: () {
                   
                  },
                  child: Container(
                    width: 50,
                    height: 50,
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.only(left: 20),
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(10)),
                    child: Image.asset(
                      categories[index]['iconPath'],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(                        
                  categories[index]['name'],
                  style: TextStyle(color: Colors.black,),
                  
                )
              ]),
            );
          }),
    );
  }
}

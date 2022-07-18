import 'dart:convert';
import 'dart:math';

import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class PostCard extends StatefulWidget {
  int number;

  PostCard({required this.number});

  @override
  State<PostCard> createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  late int pageLength;
  
  late PageController _pageController ;

  List<String> imageList = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSmD5NgDVRWlp7lp1E0OAG1O4FXtRft6GFrt-ga3MbW-v9nYZ9KmKgLa_wUWItiPG67lU0&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQzNd4-uAchim56GrHgUSH-WUlyYk-SWbQQ_7v-KoRc0UU99t17wD5qP8CWQL-R-O5IquA&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRyq224qrbIHvf9O_GxSkH8m6bumf2sBxMuex9LusJvwXwWDxQn8_b_Mc33gDsbZHefmd8&usqp=CAU',
  ];

  int activePage = 1;

  @override
  void initState() {
    // pageLength=3+Random().nextInt(3);
    _pageController = PageController(viewportFraction: 0.8, initialPage: 1);
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          // padding: EdgeInsets.symmetric(horizontal: 10),
          width: MediaQuery.of(context).size.width,
          height: 50,
          // color: Colors.blue,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 15,
                    backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQdw2Fd29xpN0Q7aB5zKTM3JARsbthBOXiMzA&usqp=CAU'),
                  ),
                  SizedBox(width: 5,),
                  Text('10123lsfsdf'),
                ],
              ),
              Icon(Icons.arrow_drop_down_circle_outlined),
            ],
          ),
        ),
        AspectRatio(
          aspectRatio: 10*0.1,
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              Container(
              color: Colors.black,
              child: PageView(
                controller: _pageController,
                onPageChanged: (page) {
                  setState(() {
                    activePage = page;
                  });
                },
                children: [
                  Image.network(imageList[Random().nextInt(3)],fit:BoxFit.cover),
                  Image.network(imageList[Random().nextInt(3)],fit:BoxFit.cover),
                  Image.network(imageList[Random().nextInt(3)],fit:BoxFit.cover),
                ],
                ),
              ),
            ] ,
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          width: MediaQuery.of(context).size.width,
          height: 40,
          // color: Colors.redAccent,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.favorite_border),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.chat_outlined),
                  ),
                  // Icon(Icons.send),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: indicators(imageList.length, activePage)
              ),
              Container(
                width: 60, 
                child: Text('2022-04-18',style: TextStyle(fontSize: 11),),
              ),
            ],
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 65,
          // color: Colors.amber,
          color: Colors.grey,
          child: Text('123123제목을 적어!주세요. 내용입니다.\n 강라닐ㅇ\n 강라닐ㅇ\n 강라닐ㅇ\n 강라닐ㅇ'),
        ),
        // TextButton(
        //   onPressed: () {},
        //   child: Text('Hellow'),
        // ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 50,
          color: Colors.green,
          child: Center(child: Text('댓글 n개 모두 보기')),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          width: MediaQuery.of(context).size.width,
          height: 50,
          // color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 15,
                    backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQdw2Fd29xpN0Q7aB5zKTM3JARsbthBOXiMzA&usqp=CAU'),
                  ),
                  SizedBox(width: 5,),
                  Text('1000123lsdkfsdf'),
                ],
              ),
              Icon(Icons.arrow_drop_down_circle_outlined),
            ],
          ),
        ),
      ],
    );
  }
}

// AnimatedContainer slider(images, pagePosition, active) {
//   double margin = active ? 10 : 20;

//   return AnimatedContainer(
//     duration: Duration(milliseconds: 500),
//     curve: Curves.easeInOutCubic,
//     margin: EdgeInsets.all(margin),
//     decoration: BoxDecoration(
//         image: DecorationImage(image: NetworkImage(images[pagePosition]))),
//   );
// }

List<Widget> indicators(imagesLength, currentIndex) {
  return List<Widget>.generate(imagesLength, (index) {
    return Container(
      margin: EdgeInsets.all(3),
      width: 10,
      height: 10,
      decoration: BoxDecoration(
          color: currentIndex == index ? Colors.black : Colors.black26,
          shape: BoxShape.circle),
    );
  });
}
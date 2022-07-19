import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';

//sliverMinHeight: 카테고리 크기, sliverMaxHeight: appbar크기
final double sliverMinHeight = 60.0, sliverMaxHeight = 120.0;
int pageIndex = 0;

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: NestedScrollViewExample()
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      title: new Text('HOME'),
      // leading: new Icon('assets/icons/'),
      leading: new Icon(Icons.account_balance_sharp),
      actions: [
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {},
        ),
      ],
    );
  }
}

Widget imageSlide(String text) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.red,
        child: Column(
          children: [
            Container(
              height: 230, 
              color: Colors.black54,
              child:  Carousel(), //이미지 슬라이드
            ),
            Text(
              text,
              style: TextStyle(fontSize: 20),
            ),
            Container(
              height: 250, 
              width: double.infinity,
              color: Colors.amber,
              child: Text('추천 모임'),
            ),
            Text(
              '최신피드',
              style: TextStyle(fontSize: 20),
            ),
            Container(
              height: 250, 
              width: double.infinity,
              color: Colors.blue,
              child: Text('최신 타임라인'),
            ),
          ],
        ),
      )
    );
  }

class NestedScrollViewExample extends StatefulWidget {
  // static const String routeName = '/week_of_widget/nested_scroll_view';
  @override
  NestedScrollViewExampleState createState() => NestedScrollViewExampleState();
}

class NestedScrollViewExampleState extends State<NestedScrollViewExample> {
  ScrollController scrollController = ScrollController();
  PageController pageController = PageController(initialPage: 0);

  //sliverMinHeight: 카테고리 크기, sliverMaxHeight: appbar크기
  final double sliverMinHeight = 60.0, sliverMaxHeight = 120.0;
  int pageIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    scrollController.dispose();
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: headerSliverBuilder,
          body: Container(
            margin: EdgeInsets.only(top: sliverMinHeight),
            // child: Container(
            //   child: mainPageView(),
            // ),
            child: mainPageView(),
          ),
        ),
      ),
    );
  }

  List<Widget> headerSliverBuilder(
      BuildContext context, bool innerBoxIsScrolled) {
    return <Widget>[
      SliverOverlapAbsorber(
        handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
        sliver: SliverPersistentHeader(
          pinned: true,
          delegate: SliverHeaderDelegateCS(
            minHeight: sliverMinHeight,
            maxHeight: sliverMaxHeight,
            minChild: minTopChild(),
            maxChild: topChild(),
          ),
        ),
      ),
    ];
  }

  Widget minTopChild() {
    return Column(
      children: <Widget>[
        Expanded(
          child: Container(
            alignment: Alignment.center,
            color: Color(0xFF014F90),
            child: Text(
              "Min Top Bar",
              style: TextStyle(
                color: Color(0xFFFFFFFF),
                fontSize: 23,
              ),
            ),
          ),
        ),
        pageButtonLayout(),
      ],
    );
  }

  Widget topChild() {
    return Column(
      children: <Widget>[
        Expanded(
          child: Container(
            // alignment: Alignment.center,
            alignment: Alignment.centerLeft,
            // color: Color(0xFFFF1D1D),
            color: Colors.amber,
            child: Row(
              children: [
                SizedBox(width: 8,),
                Image(
                  image: AssetImage('assets/images/logo.png'),
                  width: 70,
                ),
                SizedBox(width: 20,),
                Text(
                  "HOME",
                  // textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 23,
                  ),
                ),
                SizedBox(width: 140,),
                IconButton(
                  onPressed: () {
                    print('Hello');
                  },
                  icon: Icon(
                    Icons.search,
                    color: Colors.blue, 
                    size: 30,
                  )
                ),
              ],
            ),
          ),
        ),
        
        pageButtonLayout(),
      ],
    );
  }

  Widget pageButtonLayout() {
    return SizedBox(
      height: sliverMinHeight ,
      child: Row(
        
        // children: <Widget>[
        children:[
          Expanded(child: pageButton("전체", 0)),
          Expanded(child: pageButton("운동", 1)),
          Expanded(child: pageButton("여행", 2)),
          Expanded(child: pageButton("독서", 3)),
          Expanded(child: pageButton("게임", 4)),
          Expanded(child: pageButton("음악", 5)),
          Expanded(child: pageButton("사교 인맥", 6)),
          Expanded(child: pageButton("문화 예술", 7)),
          Expanded(child: pageButton("자유 주제", 8)),
        ],
      ),
    );
  }

  Widget pageButton(String title, int page) {
    final fontColor = pageIndex == page ? Color(0xFF2C313C) : Color(0xFF9E9E9E);
    final lineColor = pageIndex == page ? Color(0xFF014F90) : Color(0xFFF1F1F1);

    return InkWell(
      splashColor: Color(0xFF204D7E),
      onTap: () => pageBtnOnTap(page),
      child: Column(
        children: <Widget>[
          Expanded(
            child: Center(
              child: Text(
                title,
                style: TextStyle(
                  color: fontColor,
                ),
              ),
            ),
          ),
          Container(
            height: 1,
            color: lineColor,
          ),
        ],
      ),
    );
  }

  pageBtnOnTap(int page) {
    setState(() {
      pageIndex = page;
      pageController.animateToPage(
          pageIndex,
          duration: Duration(milliseconds: 700),
          curve: Curves.easeOutCirc
      );
    });
  }

  Widget mainPageView() {
    return PageView(
      controller: pageController,
      children: <Widget>[
        pageItem(
          imageSlide("전체 페이지"),
          // Text("전체 페이지"),
        ),
        pageItem(
          imageSlide("운동 페이지")
          // Text("운동 페이지"),
        ),
        pageItem(
          imageSlide("여행 페이지")
          // Text("여행 페이지"),
        ),
        pageItem(
          imageSlide("독서 페이지")
          //Text("독서 페이지"),
        ),
        pageItem(
          imageSlide("게임 페이지")
          //Text("게임 페이지"),
        ),
        pageItem(
          imageSlide("음악 페이지")
          //Text("음악 페이지"),
        ),
        pageItem(
          imageSlide("사교인맥 페이지")
          //Text("사교인맥 페이지"),
        ),
        pageItem(
          imageSlide("문화예술 페이지")
          //Text("문화예술 페이지"),
        ),
        pageItem(
          imageSlide("자유주제 페이지")
          //Text("자유주제 페이지"),
        ),
      ],
      onPageChanged: (index) => setState(() => pageIndex = index),
    );

    
  }

  Widget pageItem(Widget child) {
    double statusHeight = MediaQuery.of(context).padding.top;
    double height = MediaQuery.of(context).size.height;
    double minHeight = height - statusHeight - sliverMinHeight;

    return SingleChildScrollView(
      child: Container(
        color: Colors.white,
        constraints: BoxConstraints(minHeight: minHeight),
        child: child,
      ),
    );
  }

}

class SliverHeaderDelegateCS extends SliverPersistentHeaderDelegate {
  SliverHeaderDelegateCS({
    required this.minHeight,
    required this.maxHeight,
    required this.maxChild,
    required this.minChild,
  });
  double minHeight, maxHeight;
  final Widget maxChild, minChild;

  late double visibleMainHeight, animationVal, width;

  @override
  bool shouldRebuild(SliverHeaderDelegateCS oldDelegate) => true;
  @override
  double get minExtent => minHeight;
  @override
  double get maxExtent => max(maxHeight, minHeight);

  double scrollAnimationValue(double shrinkOffset) {
    double maxScrollAllowed = maxExtent - minExtent;

    return ((maxScrollAllowed - shrinkOffset) / maxScrollAllowed)
        .clamp(0, 1)
        .toDouble();
  }

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    width = MediaQuery.of(context).size.width;
    visibleMainHeight = max(maxExtent - shrinkOffset, minExtent);
    animationVal = scrollAnimationValue(shrinkOffset);

    return Container(
        height: visibleMainHeight,
        width: MediaQuery.of(context).size.width,
        color: Color(0xFFFFFFFF),
        child: Stack(
          children: <Widget>[
            getMinTop(),
            animationVal != 0 ? getMaxTop() : Container(),
          ],
        ));
  }

  Widget getMaxTop() {
    return Positioned(
      bottom: 0.0,
      child: Opacity(
        opacity: animationVal,
        child: SizedBox(
          height: maxHeight,
          width: width,
          child: maxChild,
        ),
      ),
    );
  }

  Widget getMinTop() {
    return Opacity(
      opacity: 1 - animationVal,
      child:
          Container(height: visibleMainHeight, width: width, child: minChild),
    );
  }

  
}





///
///
///
///


class ColoredTabBar extends Container implements PreferredSizeWidget {
  ColoredTabBar(this.color, this.tabBar);

  final Color color;
  final TabBar tabBar;

  @override
  Size get preferredSize => tabBar.preferredSize;

  @override
  Widget build(BuildContext context) => Container(
        color: color,
        child: tabBar,
      );
}

class Choice {
  final String title;
  // final IconData icon;
  final int val;
  const Choice({required this.title, required this.val});
}

const List<Choice> choices = <Choice>[
  Choice(title: '전체', val: 10),
  Choice(title: '운동', val: 0),
  Choice(title: '여행', val: 1),
  Choice(title: '독서', val: 2),
  Choice(title: '게임', val: 3),
  Choice(title: '음악', val: 4),
  Choice(title: '사교인맥', val: 5),
  Choice(title: '문화예술', val: 6),
  Choice(title: '자유주제', val: 7),
  // Choice(title: '자유주제', icon: Icons.directions_boat),
];

class ChoicePage extends StatelessWidget {
  const ChoicePage({Key? key, required this.choice}) : super(key: key);
  final Choice choice;

  @override
  Widget build(BuildContext context) {
    // final TextStyle textStyle = Theme.of(context).textTheme.display1;
    return Card(
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              choice.title,
              // style: textStyle,
            ),
          ],
        ),
      ),
    );
  }
}

class Carousel extends StatefulWidget {
  const Carousel({
    Key? key,
  }) : super(key: key);

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  // late PageController _pageController;

  List<String> images = [
    'assets/images/test01.jpg',
    'assets/images/test02.jpg',
    'assets/images/test03.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
          Swiper(
            itemBuilder: (BuildContext context,int index){
              return Image.asset(
                  images[index],
                  // 'assets/images/test0$index.jpg',
                  fit: BoxFit.fill,
                );
            },
            autoplay:true,
            // autoplayDelay: 1,
            itemCount: 3,
            pagination: new SwiperPagination(),
            control: new SwiperControl(),
          ),
    );
  }
}

AnimatedContainer slider(images, pagePosition, active) {
  double margin = active ? 10 : 20;

  return AnimatedContainer(
    duration: Duration(milliseconds: 500),
    curve: Curves.easeInOutCubic,
    margin: EdgeInsets.all(margin),
    decoration: BoxDecoration(
        image: DecorationImage(image: NetworkImage(images[pagePosition]))),
  );
}

imageAnimation(PageController animation, images, pagePosition) {
  return AnimatedBuilder(
    animation: animation,
    builder: (context, widget) {
      print(pagePosition);

      return SizedBox(
        width: 200,
        height: 200,
        child: widget,
      );
    },
    child: Container(
      margin: EdgeInsets.all(10),
      child: Image.network(images[pagePosition]),
    ),
  );
}

List<Widget> indicators(imagesLength, currentIndex) {
  return List<Widget>.generate(imagesLength, (index) {
    return Container(
      margin: EdgeInsets.all(3),
      width: 10,
      height: 10,
      decoration: BoxDecoration(
          color: currentIndex == index ? Colors.black : Colors.yellow,
          shape: BoxShape.circle),
    );
  });
}



//이미지 슬라이드
class ImageSlide extends StatefulWidget {
  const ImageSlide({Key? key}) : super(key: key);

  @override
  State<ImageSlide> createState() => _ImageSlideState();
}

class _ImageSlideState extends State<ImageSlide> {
  late PageController _pageController;

  List<String> images = [
    "https://images.wallpapersden.com/image/download/purple-sunrise-4k-vaporwave_bGplZmiUmZqaraWkpJRmbmdlrWZlbWU.jpg",
    "https://wallpaperaccess.com/full/2637581.jpg",
    "https://uhdwallpapers.org/uploads/converted/20/01/14/the-mandalorian-5k-1920x1080_477555-mm-90.jpg"
  ];

  int activePage = 1;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 0.8, initialPage: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 200,
          child: PageView.builder(
              itemCount: images.length,
              pageSnapping: true,
              controller: _pageController,
              onPageChanged: (page) {
                setState(() {
                  activePage = page;
                });
              },
              itemBuilder: (context, pagePosition) {
                bool active = pagePosition == activePage;
                return slider(images, pagePosition, active);
              }),
        ),
        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: indicators(images.length, activePage))
      ],
    );
  }
}

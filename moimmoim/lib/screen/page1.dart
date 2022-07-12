import 'package:flutter/material.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projectapp/common/color_constants.dart';

class Page1 extends StatelessWidget{
  String data ='';
  Page1({Key? key}) : super(key:key);
  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    print('Page1');    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).errorColor,
        elevation: 1,
        title: Text('Stock&Talk',
            style: GoogleFonts.expletusSans(
              fontSize: 29,              
              ),
            ),
        centerTitle: true,
        actions: [
          GestureDetector(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Icon(Icons.search_outlined),            
            ),
          ),        
        ]
      ),      
    
      body:Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Container(
            height: 280,            
            child: Stack(
              children: <Widget>[
                Container(
                  color: Colors.purple[700],
                  //this is pyrple container
                  height: 180,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 30),
                    child: Row(
                      children: <Widget>[
                        Container(
                          //this container is for circular image
                          height: 60,
                          width: 60,                          
                          decoration:  BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.white,
                            ),
                            image: DecorationImage(
                              fit: BoxFit.fill,
                                image: AssetImage(
                          /// 사용자 이미지 설정
                                  "assets/images/imag.jpg"      
                                )
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text("Ammara",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              ),
                              Text("EasyCodingWithAmmara",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),

                        ),
                        //i use spacer class which fill all space btw column and icon
                        //which i am going to create
                        new Spacer(),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                          child: Icon(Icons.notifications_active,color: Colors.white,),
                        ),

                      ],
                    ),
                  ),
                ),
                new Positioned(
                  top: 125,
                  child: Container(
                    height: 180,
                    width: width,
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: 130,
                          width: width-50,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 5,
                                offset: Offset(0,7),

                              )
                            ],
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.purple.withOpacity(0.7),

                            ),
                            borderRadius: BorderRadius.all(Radius.circular(7)),
                          ),
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Row(
                                  children: <Widget>[
                                    Text("My Option",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 13,
                                      ),
                                    ),
                                    Spacer(),
                                    Text("20-33-2019",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 13,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(
                                thickness: 2,
                              ),
                              Row(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                                    child: Column(
                                      children: <Widget>[
                                        Icon(
                                          Icons.message,
                                          size: 35,
                                          color: Colors.purple[700],
                                        ),
                                        Text("Message",
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                                    child: Column(
                                      children: <Widget>[
                                        Icon(
                                          Icons.home,
                                          size: 35,
                                          color: Colors.purple[700],
                                        ),
                                        Text("Home",
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                                    child: Column(
                                      children: <Widget>[
                                        Icon(
                                          Icons.category,
                                          size: 35,
                                          color: Colors.purple[700],
                                        ),
                                        Text("Category",
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                                    child: Column(
                                      children: <Widget>[
                                        Icon(
                                          Icons.attach_money,
                                          size: 35,
                                          color: Colors.purple[700],
                                        ),
                                        Text("Money",
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                                    child: Column(
                                      children: <Widget>[
                                        Icon(
                                          Icons.call,
                                          size: 40,
                                          color: Colors.purple[700],
                                        ),
                                        Text("Call",
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 10, 0),
                child: Row(
                  children: <Widget>[
                    
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 10, 20, 0),
                child: Row(
                  children: <Widget>[
                    
                  ],
                ),
              ),
              //paste one more time to create 3 rows
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 15, 10, 0),
                child: Row(
                  children: <Widget>[
                   
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 15, 0, 5),
            child: Container(
              child: Container(
                height: 200,
                child: Swiper(
                  itemCount: 5,
                  viewportFraction: 0.5,
                  scale: 0.5,

                  //set width of image

                  itemBuilder: (BuildContext context,int index){
                    if(index==0){
                      return Image1("assets/images/bg1.jpg");
                      //create Image1() function
                    }
                    else if(index==1){
                      return Image1("assets/images/bg2.jpg");
                    }
                    else if(index==2){
                      return Image1("assets/images/bg3.PNG");
                    }
                    else if(index==3){
                      return Image1("assets/images/bg4.jpg");
                    }
                    else{
                      return Image1("assets/images/bg8.jpg");
                    }
                  },

                ),
              ),
            ),
          )
        ],
      ),
    ),
    );
  }
  Widget Image1(dynamic image){
    return Container(
      
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          colorFilter:  ColorFilter.mode(Colors.purple.withOpacity(0.7),BlendMode.dstATop),
          image: AssetImage(image),
        ),
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
    );
  }
}
    

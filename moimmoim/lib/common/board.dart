import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:projectapp/controller/boardctl_prov.dart';

class Board extends StatefulWidget {
  const Board({Key? key}) : super(key: key);

  @override
  State<Board> createState() => _BoardState();
}

class _BoardState extends State<Board> {
  final List<int> _items = List<int>.generate(50, (int index) => index);
  late List<Person> persons;
    

  @override
  void initState(){
    super.initState();

    persons=[];
    for (int i=0; i<15; i++){
      persons.add(Person(i+21,'홍길동$i',true));
    }
  }
  @override
  Widget build(BuildContext context) {  

    return Scaffold( 
      body: 
      Container(
        margin: EdgeInsets.all(3.0),
        padding: EdgeInsets.all(3.0),
        child:
        Container(
          child: ListView(
            children: [
              SizedBox(height: 20,),
             
              StreamBuilder<QuerySnapshot>(
                stream : FirebaseFirestore.instance.collection('Board').snapshots(),
                builder:(context,snapshot){
                  if(snapshot.connectionState == ConnectionState.waiting){
                    return CircularProgressIndicator();
                  }
                  return  Card(
                    elevation:  2.0,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
                    child:Padding(padding: EdgeInsets.all(10),     
                      child:Column(
                        children: [
                          Container(
                            width: double.infinity,                
                            alignment: Alignment.center,                            
                            child: ListView.builder(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemCount: snapshot.data.docs.length,
                              itemBuilder: (ctx,index) => Container(
                                  padding: EdgeInsets.all(5),
                                  child: Row(children: [
                                    Text(
                                      snapshot.data.documnet[index]['title'],
                                    ),
                                    Text(
                                      snapshot.data.docs[index]['context'],
                                    )

                                  ]),
                                )
                              )
                        ),                    
                      ],
                     ),
                   ),
                  );
                }
              ),
              //3 ListView.seperated 를 사용하여 Lazy 하게 생성
              // Container(
              //   width: double.infinity, //like Match_parent in Android
              //   height: 200,
              //   child : ListView.builder(
              //     scrollDirection: Axis.horizontal,
              //     padding: const EdgeInsets.all(8),
              //     itemCount: persons.length,
              //     itemBuilder: (BuildContext context,int index){
              //       return PersonTile(persons[index], index);
              //     }
              //  ),
              // ),      
            ],       
          ),
        )
      )
    );
  }

}
//데이터로 사용할 클래스!!

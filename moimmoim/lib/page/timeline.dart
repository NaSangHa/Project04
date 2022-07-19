import 'package:flutter/material.dart';

import '../timelinedir/cards.dart';


class Timeline extends StatelessWidget {
  const Timeline({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset('assets/images/logo.png'),
        title:Text('Timeline')
      ),
      body: Container(
        child: ListView.separated(
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return PostCard(
              number: index,
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return SizedBox(height: 20,);
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), 
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:projectapp/page/group.dart';

class GroupProfile extends StatelessWidget {
  final String gname;

  GroupProfile({required this.gname});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            width: 65,
            height: 65,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.grey[400]),
          ),
          SizedBox(
            height: 10,
          ),
          Text(gname),
        ],
      ),
    );
  }
}

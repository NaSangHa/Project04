import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:projectapp/common/color_constants.dart';


enum TickerType{TYPE1,TYPE2,TYPE3}

class TickerWidget extends StatelessWidget {
  bool? hasStory;
  String thumbPath;
  String? ticker;
  TickerType type;
  double? size; 

  TickerWidget({Key? key,      
      required this.type,
      required this.thumbPath,
      this.hasStory,
      this.ticker,      
      this.size, 
  }) : super(key: key);

  Widget type1Widget(){
    return Container(
      width: 65,
      height: 65,
      margin:const EdgeInsets.symmetric(horizontal: 5),
      padding: const EdgeInsets.all(2),
      decoration: const BoxDecoration(
        gradient:  LinearGradient(
          begin: Alignment.topRight,
          end:Alignment.bottomRight,
          colors: [
            ColorConstants.corangeColor,
            ColorConstants.cpurpleColor,
          ]
        ),
        shape: BoxShape.circle,
      ),
      child: CachedNetworkImage(imageUrl : thumbPath, fit:BoxFit.cover),
    );
  }
   Widget type2Widget() {
    return Container(
      padding: const EdgeInsets.all(2),
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: ColorConstants.kwhiteColor,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(size!),
        child: SizedBox(
          width: size,
          height: size,
          child: CachedNetworkImage(
            imageUrl: thumbPath,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  Widget type3Widget() {
    return Row(
      children: [
        type1Widget(),
        Text(
          ticker ?? '',
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ],
    );
  } 
  
  @override
  Widget build(BuildContext context) {
    switch(type){
      case TickerType.TYPE1:       
        return type1Widget();

      case TickerType.TYPE2:
        return type2Widget();
        
      case TickerType.TYPE3:
        return type3Widget();        
    }
  }
}


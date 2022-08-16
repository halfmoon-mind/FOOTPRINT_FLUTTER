import 'package:FOOTPRINT_FLUTTER/tabs/tabs_feed.dart';
import 'package:flutter/material.dart';

class Feedbody extends StatelessWidget {

  final FootprintFeed footprintFeed;

  const Feedbody({Key? key, required this.footprintFeed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(width: 0.5,color: Color(0xFFD4D5DD)),
        ),
      ),
      child: Column(
        children: [
          _buildWriter(),
          _buildImage(),
          _buildTitle(),
          Divider(
            height: 1,
            thickness: 1,
            color: Colors.grey[300],
          ),
          _buildEmoji(footprintFeed.emotionCount[0],footprintFeed.emotionCount[1],footprintFeed.emotionCount[2]),
        ],
      ),
    );
  }

  Padding _buildWriter() {
    return Padding(padding: const EdgeInsets.symmetric(horizontal: 16),
    child: Container(
      color: Colors.red[100],
      height: 16,
    ),);
  }

  _buildImage() {
    return Padding(padding: const EdgeInsets.only(left: 16,right: 16, bottom: 16),
    child: Container(
      color: Colors.black,height: 180,
    ),);
  }
Padding _buildTitle() {
    return Padding(padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 16),
    child: Container(
      color: Colors.blue[100],
      height: 50,
    ),);
  }

Padding _buildEmoji(int smilecount,int heartcount, int goodcount){
  return Padding(padding: const EdgeInsets.all(16),
  child: Container(
    color: Colors.lime[100],
    height: 50,
  ),);
}
}



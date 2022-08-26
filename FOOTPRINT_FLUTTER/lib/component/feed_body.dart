import 'package:flutter/material.dart';
import 'package:FOOTPRINT_FLUTTER/component/image_container.dart';
import 'package:FOOTPRINT_FLUTTER/models/feed_model.dart';

class Feedbody extends StatelessWidget {
  final FeedModel footprintFeed;

  const Feedbody({Key? key, required this.footprintFeed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //inkwell
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(width: 0.5, color: Color(0xFFD4D5DD)),
        ),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          _buildWriter(),
          _buildImage(),
          _buildTitle(),
          Divider(
            height: 1,
            thickness: 1,
            color: Colors.grey[300],
          ),
          _buildEmoji(footprintFeed.emotionCount[0],
              footprintFeed.emotionCount[1], footprintFeed.emotionCount[2]),
        ],
      ),
    );
  }

  Padding _buildWriter() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
          child: Row(children: [
        SizedBox(
          width: 3,
        ),
        ImageContainer(
          width: 30,
          height: 30,
          borderRadius: 15,
          imageurl: footprintFeed.profileImg,
        ),
        SizedBox(
          width: 7,
        ),
        Text.rich(TextSpan(children: [
          TextSpan(
              text: '${footprintFeed.nickname}',
              style: TextStyle(color: Colors.black)),
        ]))
      ])),
    );
  }

  _buildImage() {
    return Visibility(
      visible: footprintFeed.contentImg != '',
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 0, top: 10),
        child: Image.asset(
          footprintFeed.contentImg[0],
          height: 200,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Padding _buildTitle() {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            footprintFeed.feedTitle,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.start,
          ),
        ));
  }

  Padding _buildEmoji(int smilecount, int heartcount, int goodcount) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Row(children: [
        IconButton(
          onPressed: () {},
          padding: EdgeInsets.fromLTRB(15.0, 15.0, 9.0, 15.0),
          icon: Icon(
            Icons.sentiment_satisfied_alt,
            color: Colors.pink[100],
            size: 25,
          ),
        ),
        Text("$smilecount",
            style: TextStyle(fontSize: 14, color: Colors.black54)),
        SizedBox(
          width: 6,
        ),
        IconButton(
          onPressed: () {},
          padding: EdgeInsets.fromLTRB(15.0, 15.0, 9.0, 15.0),
          icon: Icon(
            Icons.thumb_up_alt_outlined,
            color: Colors.pink[100],
            size: 23,
          ),
        ),
        Text("$goodcount",
            style: TextStyle(fontSize: 14, color: Colors.black54)),
        SizedBox(
          width: 6,
        ),
        IconButton(
          onPressed: () {},
          padding: EdgeInsets.fromLTRB(13.0, 15.0, 8.0, 15.0),
          icon: Icon(
            Icons.favorite_outline_rounded,
            color: Colors.pink[100],
            size: 25,
          ),
        ),
        Text("$heartcount",
            style: TextStyle(fontSize: 14, color: Colors.black54)),
        SizedBox(
          width: 6,
        ),
      ]),
    );
  }
}

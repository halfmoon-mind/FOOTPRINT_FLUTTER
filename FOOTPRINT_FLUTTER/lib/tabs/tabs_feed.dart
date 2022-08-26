import 'package:FOOTPRINT_FLUTTER/component/feed_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:FOOTPRINT_FLUTTER/models/feed_model.dart';

List<FeedModel> footprintFeedList = [
  FeedModel(
      category: '데이트',
      profileImg: 'basic_profile.png',
      nickname: 'user_1',
      location: '위치_1',
      feedTitle: '여기는 제목 부분입니다. 저 사진은 숭실대의 명물! 백마상이지요. 제목을 엄청 길게 만들면 어떻게 될까요?',
      footprintUrl: 'example_footprint.png',
      content: ['첫 번째 사진에 대한 글 입니다', '두 번째 사진에 대한 글 입니다', '세 번째 사진에 대한 글 입니다'],
      contentImg: ['example_1.jpeg', 'example_1.jpeg', 'example_1.jpeg'],
      emotionCount: [3, 6, 2]),
  FeedModel(
      category: '여행',
      profileImg: 'basic_profile.png',
      nickname: 'user_2',
      location: '위치_2',
      feedTitle: '분수대랑 베어드홀 탐험기',
      footprintUrl: 'example_footprint.png',
      content: ['첫 번째 사진에 대한 글 입니다', '두 번째 사진에 대한 글 입니다'],
      contentImg: ['example_2.jpeg', 'example_2.jpeg'],
      emotionCount: [5, 8, 11]),
  FeedModel(
      category: '산책',
      profileImg: 'example_4.jpeg',
      nickname: 'user_3',
      location: '위치_3',
      feedTitle: '여기는 제목 부분입니다',
      footprintUrl: 'example_footprint.png',
      content: ['첫 번째 사진에 대한 글 입니다', '두 번째 사진에 대한 글 입니다', '세 번째 사진에 대한 글 입니다'],
      contentImg: ['example_3.jpeg', 'example_3.jpeg'],
      emotionCount: [2, 5, 0])
];

class FeedTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text(
          'Feed',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: false,
        actions: [
          IconButton(
            icon: Icon(CupertinoIcons.search),
            onPressed: () {
              Navigator.pushNamed(context, '/search');
            },
          )
        ],
        elevation: 0.0,
        automaticallyImplyLeading: false,
      ),
      body: ListView(
        children: [
          ...List.generate(
              footprintFeedList.length,
              (index) => Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Feedbody(footprintFeed: footprintFeedList[index]),
                  ))
        ],
      ),
    );
  }
}

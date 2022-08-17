import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FootprintFeed {
  final String category;
  final String profileImg;
  final String nickname;
  final String location;
  final String feedTitle;
  final String footprintUrl;
  final List<String> content;
  final List<String> contentImg;
  final List<int> emotionCount;

  FootprintFeed({
    required this.category,
    required this.profileImg,
    required this.nickname,
    required this.location,
    required this.feedTitle,
    required this.footprintUrl,
    required this.content,
    required this.contentImg,
    required this.emotionCount,
  });
}

List<FootprintFeed> footprintFeedList = [
  FootprintFeed(
      category: '데이트',
      profileImg: 'basic_profile.png',
      nickname: 'user_1',
      location: '위치_1',
      feedTitle: '여기는 제목 부분입니다',
      footprintUrl: 'example_footprint.png',
      content: [
        '첫 번째 사진에 대한 글 입니다',
        '두 번째 사진에 대한 글 입니다',
        '세 번째 사진에 대한 글 입니다'
      ],
      contentImg: [
        'example_image.png',
        'example_image.png',
        'example_image.png'
      ],
      emotionCount: [
        3,
        6,
        2
      ]),

  FootprintFeed(
      category: '여행',
      profileImg: 'basic_profile.png',
      nickname: 'user_2',
      location: '위치_2',
      feedTitle: '여기는 제목 부분입니다',
      footprintUrl: 'example_footprint.png',
      content: ['첫 번째 사진에 대한 글 입니다', '두 번째 사진에 대한 글 입니다'],
      contentImg: ['example_image.png', 'example_image.png'],
      emotionCount: [5, 8, 11]),
      
  FootprintFeed(
      category: '산책',
      profileImg: 'basic_profile.png',
      nickname: 'user_3',
      location: '위치_3',
      feedTitle: '여기는 제목 부분입니다',
      footprintUrl: 'example_footprint.png',
      content: ['첫 번째 사진에 대한 글 입니다', '두 번째 사진에 대한 글 입니다', '세 번째 사진에 대한 글 입니다'],
      contentImg: ['example_image.png', 'example_image.png'],
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
            onPressed: () {},
          )
        ],
        elevation: 0.0,
        automaticallyImplyLeading: false,
      ),
      body: ListView(
        children: [
          
        ],
      ),
    );
  }
}

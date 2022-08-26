import 'package:flutter/material.dart';
import 'package:FOOTPRINT_FLUTTER/component/feed_body.dart';
import 'package:FOOTPRINT_FLUTTER/models/feed_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:FOOTPRINT_FLUTTER/models/inDB/init.data.dart';

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

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreen createState() => _SearchScreen();
}

class _SearchScreen extends State<SearchScreen> {
  List locationHashtags = [];
  List typeHashtags = [];

  locationSetter(List locations) {
    setState(() {
      locationHashtags = locations;
    });
  }

  typeSetter(List types) {
    setState(() {
      typeHashtags = types;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> hashtagList = [];
    for (int i = 0; i < locationHashtags.length; i++) {
      hashtagList.add(Text('#${locationHashtags[i]} '));
    }
    for (int i = 0; i < typeHashtags.length; i++) {
      hashtagList.add(Text('#${typeHashtags[i]} '));
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '검색하기',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (_) {
                            return LocationDialog(
                              loc: locationHashtags,
                              setter: locationSetter,
                            );
                          });
                    },
                    child: const SizedBox(
                      child: Text('장소 해시태그 선택하기'),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (_) {
                            return TypeDialog(
                              types: typeHashtags,
                              setter: typeSetter,
                            );
                          });
                    },
                    child: const SizedBox(
                      child: Text('카테고리 해시태그 선택하기'),
                    ),
                  ),
                ],
              ),
              Text(
                '선택된 해시태그',
                style: TextStyle(fontSize: 18),
              ),
              Wrap(children: hashtagList),
              Feedbody(footprintFeed: footprintFeedList[0]),
              Feedbody(footprintFeed: footprintFeedList[1]),
              Feedbody(footprintFeed: footprintFeedList[2]),
            ],
          ),
        ),
      ),
    );
  }
}

class LocationDialog extends StatefulWidget {
  LocationDialog({Key? key, required this.loc, required this.setter})
      : super(key: key);
  List loc;
  Function setter;

  @override
  _LocationDialog createState() => _LocationDialog();
}

class _LocationDialog extends State<LocationDialog> {
  List locationList = [];
  Color InkWellColor = Colors.grey;
  Color InkWellSelected = Color(0xFF37EEAB);
  final List<String> _initHashTags = InitialData().locationHashtags;

  @override
  Widget build(BuildContext context) {
    final List<Widget> _hashTags = [];
    for (int i = 0; i < InitialData().locationHashtags.length; i++) {
      _hashTags.add(
        TextButton(
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            minimumSize: Size.zero,
          ),
          onPressed: (() {
            if (locationList.contains(_initHashTags[i])) {
              setState(() {
                locationList.remove(_initHashTags[i]);
              });
            } else {
              setState(() {
                locationList.add(_initHashTags[i]);
              });
            }
          }),
          child: Container(
            alignment: Alignment.center,
            width: 130,
            padding: EdgeInsets.all(2),
            margin: EdgeInsets.all(2),
            decoration: BoxDecoration(
                color: (locationList.contains(_initHashTags[i])
                    ? InkWellSelected
                    : InkWellColor),
                borderRadius: BorderRadius.circular(10)),
            child: Text(
              _initHashTags[i],
              style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black87),
            ),
          ),
        ),
      );
    }

    return CupertinoAlertDialog(
      title: Text("장소 해시태그를 선택하세요"),
      content: SingleChildScrollView(
        child: Column(children: _hashTags),
      ),
      actions: <Widget>[
        TextButton(
            onPressed: () {
              Navigator.pop(context);
              widget.setter([]);
            },
            child: const Text(
              '취소',
              style: TextStyle(color: Colors.black54),
            )),
        TextButton(
          onPressed: () {
            Navigator.pop(context);
            widget.setter(locationList);
          },
          child: const Text(
            "선택",
            style: TextStyle(color: Colors.black54),
          ),
        ),
      ],
    );
  }
}

class TypeDialog extends StatefulWidget {
  TypeDialog({Key? key, required this.types, required this.setter})
      : super(key: key);
  List types;
  Function setter;
  @override
  _TypeDialog createState() => _TypeDialog();
}

class _TypeDialog extends State<TypeDialog> {
  List typeList = [];
  Color InkWellColor = Colors.grey;
  Color InkWellSelected = Color(0xFF37EEAB);

  final List<String> _initHashTags = InitialData().typesHashtags;

  @override
  Widget build(BuildContext context) {
    final List<Widget> _hashTags = [];
    for (int i = 0; i < InitialData().typesHashtags.length; i++) {
      _hashTags.add(
        TextButton(
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            minimumSize: Size.zero,
          ),
          onPressed: (() {
            if (typeList.contains(_initHashTags[i])) {
              setState(() {
                typeList.remove(_initHashTags[i]);
              });
            } else {
              setState(() {
                typeList.add(_initHashTags[i]);
              });
            }
          }),
          child: Container(
            alignment: Alignment.center,
            width: 130,
            padding: EdgeInsets.all(2),
            margin: EdgeInsets.all(2),
            decoration: BoxDecoration(
                color: (typeList.contains(_initHashTags[i])
                    ? InkWellSelected
                    : InkWellColor),
                borderRadius: BorderRadius.circular(10)),
            child: Text(
              _initHashTags[i],
              style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black87),
            ),
          ),
        ),
      );
    }

    return CupertinoAlertDialog(
      title: Text("카테고리 해시태그를 선택하세요"),
      content: SingleChildScrollView(
        child: Column(children: _hashTags),
      ),
      actions: <Widget>[
        TextButton(
            onPressed: () {
              Navigator.pop(context);
              widget.setter([]);
            },
            child: const Text(
              '취소',
              style: TextStyle(color: Colors.black54),
            )),
        TextButton(
            onPressed: () {
              Navigator.pop(context);
              widget.setter(typeList);
            },
            child: const Text(
              "선택",
              style: TextStyle(color: Colors.black54),
            )),
      ],
    );
  }
}

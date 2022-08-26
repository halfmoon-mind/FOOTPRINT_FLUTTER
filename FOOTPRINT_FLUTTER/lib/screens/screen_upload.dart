// import 'dart:html';
import 'package:FOOTPRINT_FLUTTER/component/map_component.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:FOOTPRINT_FLUTTER/models/inDB/init.data.dart';

class UploadScreen extends StatefulWidget {
  @override
  _UploadScreen createState() => _UploadScreen();
}

class _UploadScreen extends State<UploadScreen> {
  String inputTitleText = '';
  String inputDescriptionText = '';
  List locationHashtags = [];
  List typeHashtags = [];

  locationSetter(List locations, bool isNext) {
    setState(() {
      locationHashtags = locations;
      (isNext)
          ? showDialog(
              context: context,
              builder: (_) {
                return TypeDialog(
                  types: typeHashtags,
                  setter: typeSetter,
                );
              })
          : null;
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
    for (int i = 0; i < typeHashtags.length; i++) {
      hashtagList.add(Text('#${typeHashtags[i]} '));
    }
    for (int i = 0; i < locationHashtags.length; i++) {
      hashtagList.add(Text('#${locationHashtags[i]} '));
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '새로운 발자국',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('업로드가 완료되었습니다!'),
                  duration: Duration(seconds: 2),
                ),
              );
            },
            child: const Text(
              '업로드',
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 300,
              child: MapViewApp(),
            ),
            Padding(
                padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('발자국 제목'),
                    TextField(
                      decoration: const InputDecoration(
                        hintText: '제목을 입력하세요',
                        border: InputBorder.none,
                      ),
                      onChanged: (text) {
                        setState(() {
                          inputTitleText = text;
                        });
                      },
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('설명'),
                      ],
                    ),
                    TextField(
                      decoration: const InputDecoration(
                        hintText: '설명을 입력하세요',
                        border: InputBorder.none,
                      ),
                      onChanged: (text) {
                        setState(() {
                          inputDescriptionText = text;
                        });
                      },
                    ),
                    Row(
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
                          child: Text('해시태그 추가하기'),
                        ),
                        // Container(
                        //   padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                        //   width: 224,
                        //   child: Text(
                        //     '#안녕하세요 #해시태그 #이런_해시태그도 #선택했나요',
                        //     overflow: TextOverflow.clip,
                        //   ),
                        // ),
                      ],
                    ),
                    Wrap(children: hashtagList),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: Text('사진'),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          const Padding(padding: EdgeInsets.only(right: 10)),
                          Image.asset(
                            'images/example_1.jpeg',
                            width: 150,
                          ),
                          const Padding(padding: EdgeInsets.only(right: 10)),
                          Image.asset(
                            'images/example_1.jpeg',
                            width: 150,
                          ),
                          const Padding(padding: EdgeInsets.only(right: 10)),
                          Image.asset(
                            'images/example_1.jpeg',
                            width: 150,
                          ),
                        ],
                      ),
                    ),
                  ],
                )),
          ],
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
              widget.setter([], false);
            },
            child: const Text(
              '취소',
              style: TextStyle(color: Colors.black54),
            )),
        TextButton(
          onPressed: () {
            Navigator.pop(context);
            widget.setter(locationList, true);
          },
          child: const Text(
            "다음으로",
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
              "완료",
              style: TextStyle(color: Colors.black54),
            )),
      ],
    );
  }
}

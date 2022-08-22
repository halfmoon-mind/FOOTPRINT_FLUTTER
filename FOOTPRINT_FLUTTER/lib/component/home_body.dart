import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeTabPage {
  final Container FootprintMap;
  final List<String> time;
  final List<String> location;

  HomeTabPage(
      {required this.FootprintMap, required this.time, required this.location});
}

HomeTabPage HometabPage = HomeTabPage(
    FootprintMap: Container(
        //padding: const EdgeInsets.all(16),
        child: Image.asset(
          'map_image.jpg',
          height: 370,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        height: 370,
        decoration: BoxDecoration(
          color: Colors.blue[200],
        )),
    time: [
      '8월 18일 13시 00분',
      '8월 18일 15시 00분',
      '8월 18일 17시 00분',
      '8월 18일 19시 00분'
    ],
    location: [
      '논현',
      '오천점',
      '강남길우',
      '선진'
    ]);

Padding buildLog(index) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
    child: Container(
      padding: const EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Colors.grey[300],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '${HometabPage.time[index]}',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            width: 10,
          ),
          Text('${HometabPage.location[index]}',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500))
        ],
      ),
    ),
  );
}

class Homebody extends StatelessWidget {
  final HomeTabPage homeTabPage;
  const Homebody({
    Key? key,
    required this.homeTabPage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ...List.generate(
            HometabPage.time.length,
            (index) => Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: buildLog(index),
                ))
      ],
      // ),
      // padding: const EdgeInsets.all(16),
    );
  }
} //로그부분 
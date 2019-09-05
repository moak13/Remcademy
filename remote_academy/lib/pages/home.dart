import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:remote_academy/ui_aid/Popular_card.dart';
import 'package:remote_academy/ui_aid/top_card.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil.getInstance()..init(context);
    ScreenUtil.instance = ScreenUtil(
        height: ScreenUtil.screenHeight,
        width: ScreenUtil.screenWidth,
        allowFontScaling: true)
      ..init(context);
    return Scaffold(
        body: ListView(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 30),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Popular Courses',
              style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold, letterSpacing: 1),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5, top: 15),
          child: Container(
            height: ScreenUtil().setHeight(300),
            //decoration: BoxDecoration(color: Colors.black),
            child: PopularCard(),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 5, top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('Top Categories',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1)),
              FlatButton(
                onPressed: () {},
                child: Text('View All', style: TextStyle(color: Colors.red)),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5, top: 15),
          child: Container(
            height: ScreenUtil().setHeight(200),
            //decoration: BoxDecoration(color: Colors.black),
            child: TopCard(),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 5, top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('Ongoing Courses',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1)),
              FlatButton(
                onPressed: () {},
                child: Text('View All', style: TextStyle(color: Colors.red)),
              )
            ],
          ),
        ),
      ],
    ));
  }
}

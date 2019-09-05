import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:remote_academy/models/categories.model.dart';

class TopCard extends StatefulWidget {
  @override
  _TopCardState createState() => _TopCardState();
}

class _TopCardState extends State<TopCard> {
  List<TopCategories> data = catData;
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil.getInstance()..init(context);
    ScreenUtil.instance = ScreenUtil(
        height: ScreenUtil.screenHeight,
        width: ScreenUtil.screenWidth,
        allowFontScaling: true)
      ..init(context);
    return ListView.builder(
      itemCount: data.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Container(
            height: ScreenUtil().setHeight(100),
            width: ScreenUtil().setWidth(200),
            decoration: BoxDecoration(
                color: data[index].color,
                borderRadius: BorderRadius.circular(5)),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(data[index].category,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: ScreenUtil().setSp(20),
                          fontWeight: FontWeight.bold)),
                  Text(data[index].courseNo.toString() + ' Courses',
                      style: TextStyle(
                          color: Colors.white70,
                          fontSize: ScreenUtil().setSp(20),
                          fontWeight: FontWeight.w400))
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AccountPage extends StatefulWidget {
  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
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
          padding: const EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.all(Radius.circular(100))),
                child: CircleAvatar(
                  radius: 50,
                  child: Icon(Icons.person),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'John Doe',
                    style: TextStyle(
                        fontSize: ScreenUtil().setSp(60),
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'email@example.com',
                    style: TextStyle(
                        fontSize: ScreenUtil().setSp(25),
                        fontWeight: FontWeight.w300),
                  )
                ],
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
              height: ScreenUtil().setHeight(200),
              width: ScreenUtil().setWidth(400),
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Courses',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          '35',
                          style: TextStyle(
                              color: Colors.purpleAccent,
                              fontSize: ScreenUtil().setSp(40)),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Completed',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          '20',
                          style: TextStyle(
                              color: Colors.green,
                              fontSize: ScreenUtil().setSp(40)),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Pending',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          '15',
                          style: TextStyle(
                              color: Colors.orange,
                              fontSize: ScreenUtil().setSp(40)),
                        )
                      ],
                    )
                  ],
                ),
              )),
        ),
        Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.grey[300],
                        child: Icon(Icons.feedback, color: Colors.greenAccent),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Help feedback'),
                          Icon(Icons.arrow_forward_ios, color: Colors.grey)
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.grey[300],
                        child: Icon(Icons.settings, color: Colors.purpleAccent),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Setting'),
                          Icon(Icons.arrow_forward_ios, color: Colors.grey)
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.grey[300],
                        child: Icon(Icons.exit_to_app, color: Colors.blue),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Logout', style: TextStyle(color: Colors.redAccent),),
                          Icon(Icons.arrow_forward_ios, color: Colors.grey)
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        )
      ],
    ));
  }
}

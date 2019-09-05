import 'package:flutter/material.dart';
import 'package:remote_academy/pages/account.dart';
import 'package:remote_academy/pages/home.dart';
import 'package:remote_academy/pages/trends.dart';

class WrapperView extends StatefulWidget {
  @override
  _WrapperViewState createState() => _WrapperViewState();
}

class _WrapperViewState extends State<WrapperView> {
  int currentIndex = 0;
  List<Icon> iconList = [
    Icon(Icons.home),
    Icon(Icons.trending_up),
    Icon(Icons.person)
  ];
  List<Widget> screens = [HomePage(), TrendPage(), AccountPage()];

  Widget currentScreen = HomePage();

  final PageStorageBucket bucket = PageStorageBucket();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        // margin: const EdgeInsets.all(20),
        // padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(color: Colors.white),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: List<IconButton>.generate(iconList.length, (int i) {
              return IconButton(
                color: i == currentIndex ? Colors.red : Colors.black26,
                icon: iconList[i],
                iconSize: 30.0,
                onPressed: () {
                  setState(() {
                    currentIndex = i;
                  });
                },
              );
            })),
      ),
      body: SafeArea(
        child: screens[currentIndex],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'Home.dart';
import 'fenlei.dart';
import 'shopping.dart';
import 'my.dart';

class IndexPage extends StatefulWidget {
  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  final List<BottomNavigationBarItem> bottomTabs = [
    BottomNavigationBarItem(icon: Icon(CupertinoIcons.home), title: Text('首页')),
    BottomNavigationBarItem(
        icon: Icon(CupertinoIcons.search), title: Text('分类')),
    BottomNavigationBarItem(
        icon: Icon(CupertinoIcons.shopping_cart), title: Text('购物')),
    BottomNavigationBarItem(
        icon: Icon(CupertinoIcons.profile_circled), title: Text('我的'))
  ];

  final List tabBotids = [HomePage(), FenleiPage(), ShoppingPage(), MyPage()];

  int currentIndex = 0;
  var page;

  @override
  void initState() {
    page = tabBotids[currentIndex];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 245, 245, 1.0),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        items: bottomTabs,
        onTap: (index) {
          setState(() {
            currentIndex = index;
            page = tabBotids[index];
          });
        },
      ),
      body: page,
    );
  }
}

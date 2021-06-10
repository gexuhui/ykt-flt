import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'homePage.dart';
import 'mapPage.dart';
import 'shopPage.dart';
import 'minePage.dart';

class TabbarPage extends StatefulWidget {
  _TabbarPageState createState() => _TabbarPageState();
}

class _TabbarPageState extends State<TabbarPage>{
  final List<BottomNavigationBarItem> bottomTabs = [
    BottomNavigationBarItem(icon: Icon(CupertinoIcons.home), title: Text("首页")),
    BottomNavigationBarItem(icon: Icon(CupertinoIcons.search), title: Text("出行")),
    BottomNavigationBarItem(icon: Icon(CupertinoIcons.shopping_cart), title: Text("商城")),
    BottomNavigationBarItem(icon: Icon(CupertinoIcons.profile_circled), title: Text("个人")),
  ];

  final List tabPages = [
    homePage(),
    mapPage(),
    shopPage(),
    minePage()
  ];

  final titleArray = [
    Text("首页"),
    Text("出行"),
    Text("商城"),
    Text("个人"),
  ];

  int currentIndex = 0;
  var currentPage;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: titleArray[currentIndex],
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: Color.fromRGBO(244, 245, 245, 1),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        items: bottomTabs,
        onTap: (index){
          setState(() {
            currentIndex = index;
            currentPage = tabPages[currentIndex];
          });
        },
      ),
      body: currentPage,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_location),

        onPressed: (){
          print('FloatingActionButton');
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
    // throw UnimplementedError();
  }
}
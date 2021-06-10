import 'package:flutter/material.dart';

class homePage extends StatelessWidget {
  //MediaQuery.of(context).size.width,
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Center(
          child: ListView(
            children: [
              Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      color: Colors.red,
                      padding: EdgeInsets.all(5.0),
                    ),
                    flex: 1,
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.yellow,
                      padding: EdgeInsets.all(5.0),
                    ),
                    flex: 2,
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.blue,
                      padding: EdgeInsets.all(5.0),
                    ),
                    flex: 1,
                  ),
                ],
              ),
              //列表项
              // Container(
              //   child: AspectRatio(
              //     aspectRatio: 375.0/88.0,//宽高比
              //     child: Container(
              //       color: Colors.red,
              //       child: Row(
              //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //           mainAxisSize: MainAxisSize.max, //交叉轴的布局方式，对于column来说就是水平方向的布局方式
              //           crossAxisAlignment: CrossAxisAlignment.center, //就是字child的垂直布局方向，向上还是向下
              //           verticalDirection: VerticalDirection.down,
              //           children: [
              //             Container(
              //               alignment: Alignment.center,
              //               color: Colors.lightBlue,
              //               width: 100,
              //               height: 100,
              //               child: FractionallySizedBox(
              //                 alignment: Alignment.center,
              //                 widthFactor: 1,
              //                 heightFactor: 1,
              //               ),
              //             ),
              //             Container(
              //               alignment: Alignment.center,
              //               color: Colors.lightBlue,
              //               // width: 100,
              //               // height: 100,
              //               child: Text("B"),
              //             ),
              //             Container(
              //               alignment: Alignment.center,
              //               color: Colors.yellow,
              //               // width: 100,
              //               // height: 100,
              //               child: Text("C"),
              //             )
              //           ],
              //       ),
              //     ),
              //   ),
              // ),
              ListTile(
                //标题
                title: Text('广州市黄埔大道建中路店',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 18.0),),
                //子标题
                subtitle: Text('广州市黄埔大道建中路3号'),
                //左侧图标
                leading: Icon(
                  Icons.fastfood,
                  color: Colors.orange,
                ),
              ),
              ListTile(
                title: Text('广州市白云区机场路白云机场店',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 18.0),),
                subtitle: Text('广州市白云区机场路T3航站楼'),
                leading: Icon(
                  Icons.airplay,
                  color: Colors.blue,
                ),
              ),
              ListTile(
                title: Text('广州市中山大道中山大学附属医院',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 18.0),),
                subtitle: Text('广州市中山大道45号'),
                leading: Icon(
                  Icons.local_hospital,
                  color: Colors.green,
                ),
              ),
              ListTile(
                title: Text('广州市天河区太平洋数码城',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 18.0),),
                subtitle: Text('广州市天河区岗顶太平洋数码城'),
                leading: Icon(
                  Icons.computer,
                  color: Colors.deepPurple,
                ),
              ),
            ],
          ),
      ),
    );
  }
}
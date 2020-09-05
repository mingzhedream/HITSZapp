import 'package:flutter/material.dart';
import 'PicturePage.dart';

class ReleasePage extends StatefulWidget {
  ReleasePage({Key key}) : super(key: key);

  @override
  _ReleasePageState createState() => _ReleasePageState();
}

class _ReleasePageState extends State<ReleasePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            leading: FlatButton(
              child: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            title: Text('发布题目'),
          ),
          body: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  width: double.infinity,
                  height: 225,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.all(Radius.circular(8.0))),
                  child: SizedBox(
                    height: 150,
                    width: 150,
                    child: FlatButton(
                      child: Icon(
                        Icons.add,
                        size: 100,
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return PicturePage();
                        }));
                      },
                    ),
                  ),
                ),
                Text("点击“+”添加题目图片"),
                Container(
                  width: double.infinity,
                  height: 125,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.all(Radius.circular(8.0))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        height: 30,
                        child: Text('请选择相应的tag标签'),
                        alignment: Alignment.centerLeft,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            alignment: Alignment.center,
                            
                            width: 60,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                            ),
                            child: PopupMenuButton(
                              child: Text("专业"),
                              initialValue: "hot",
                              padding: EdgeInsets.all(0.0),
                              itemBuilder: (BuildContext context) {
                                return <PopupMenuItem<String>>[
                                  PopupMenuItem<String>(
                                    child: Text("高等数学"),
                                    value: "HighMath",
                                  ),
                                  PopupMenuItem<String>(
                                    child: Text("数据结构"),
                                    value: "new",
                                  ),
                                ];
                              },
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: 60,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                            ),
                            child: PopupMenuButton(
                              child: Text("作业"),
                              initialValue: "hot",
                              padding: EdgeInsets.all(0.0),
                              itemBuilder: (BuildContext context) {
                                return <PopupMenuItem<String>>[
                                  PopupMenuItem<String>(
                                    child: Text("高等数学"),
                                    value: "HighMath",
                                  ),
                                  PopupMenuItem<String>(
                                    child: Text("数据结构"),
                                    value: "new",
                                  ),
                                ];
                              },
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: 60,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                            ),
                            child: PopupMenuButton(
                              child: Text("章节"),
                              initialValue: "hot",
                              padding: EdgeInsets.all(0.0),
                              itemBuilder: (BuildContext context) {
                                return <PopupMenuItem<String>>[
                                  PopupMenuItem<String>(
                                    child: Text("高等数学"),
                                    value: "HighMath",
                                  ),
                                  PopupMenuItem<String>(
                                    child: Text("数据结构"),
                                    value: "new",
                                  ),
                                ];
                              },
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: 60,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                            ),
                            child: PopupMenuButton(
                              child: Text("题号"),
                              initialValue: "hot",
                              padding: EdgeInsets.all(0.0),
                              itemBuilder: (BuildContext context) {
                                return <PopupMenuItem<String>>[
                                  PopupMenuItem<String>(
                                    child: Text("高等数学"),
                                    value: "HighMath",
                                  ),
                                  PopupMenuItem<String>(
                                    child: Text("数据结构"),
                                    value: "new",
                                  ),
                                ];
                              },
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: double.infinity,
                        height: 200,
                        child: TextField(),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 20,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  width: 120,
                  child: FlatButton(
                    child: Text(
                      '发布！',
                      style: TextStyle(fontSize: 25),
                    ),
                    onPressed: () {},
                  ),
                )
              ],
            ),
          )),
    );
  }
}

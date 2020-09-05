import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import '../search/Search.dart';
import '../community/Community.dart';
import '../realse/PicturePage.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Home'),
          ),
          body: Button()),
    );
  }
}

class Button extends StatelessWidget {
  const Button({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 50,
          ),
          Container(
            height: 100,
            width: 100,
            child: FlatButton(
              child: Column(
                children: <Widget>[
                  Icon(
                    Icons.search,
                    size: 50,
                  ),
                  Text(
                    '搜题',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SearchPage();
                }));
              },
            ),
          ),
          Container(
            height: 100,
            width: 100,
            child: FlatButton(
              child: Column(
                children: <Widget>[
                  Icon(
                    Icons.camera_alt,
                    size: 50,
                  ),
                  Text(
                    '拍照发布题目',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return PicturePage();
                }));
              },
            ),
          ),
          Container(
            height: 100,
            width: 100,
            child: FlatButton(
              child: Column(
                children: <Widget>[
                  Icon(
                    Icons.people,
                    size: 50,
                  ),
                  Text(
                    '社区',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return CommunityPage();
                }));
              },
            ),
          ),
        ],
      ),
    );
  }
}

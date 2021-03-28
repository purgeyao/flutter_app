/*
 * @Author: meetqy
 * @since: 2019-10-22 09:59:58
 * @lastTime: 2019-11-05 17:51:08
 * @LastEditors: meetqy
 */
import 'package:flutter/material.dart';
import 'package:flutter_collapse/flutter_collapse.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: ExampleCollapse(),
    );
  }
}

class ExampleCollapse extends StatefulWidget {
  ExampleCollapse({Key key}) : super(key: key);

  @override
  _ExampleCollapseState createState() => _ExampleCollapseState();
}

class _ExampleCollapseState extends State<ExampleCollapse> {
  bool status1 = true;
  bool status2 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(245, 245, 245, 1),
      appBar: AppBar(
        title: Text('collapse'),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 20),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Collapse(
                title: Container(child: Text('折叠面板 - 默认')),
                body: Text('这就是一个demo'),
                value: status1,
                onChange: (bool value) {
                  setState(() {
                    status1 = value;
                  });
                },
              ),
              Container(
                child: Collapse(
                  padding: EdgeInsets.all(0),
                  title: Text('折叠面板 - 自定义'),
                  body: Container(
                    color: Colors.blue,
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('这就是一个demo这就是一个demo这就是一个demo这就是一个demo这就是一个demo'),
                        Text('这就是一个demo这就是一个demo这就是一个demo'),
                        Text('这就是一个demo这就是一个demo'),
                        Text('这就是一个demo这就是一个demo'),
                        Text('这就是一个demo这就是一个demo'),
                        Text('这就是一个demo这就是一个demo'),
                        Text('这就是一个demo这就是一个demo'),
                        Text('这就是一个demo这就是一个demo'),
                        Text('这就是一个demo这就是一个demo'),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            CircularProgressIndicator(
                              backgroundColor: Colors.yellow,
                            ),
                            CircularProgressIndicator(
                              backgroundColor: Colors.green,
                            ),
                            CircularProgressIndicator(
                              backgroundColor: Colors.red,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  value: status2,
                  onChange: (bool value) {
                    setState(() {
                      status2 = value;
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

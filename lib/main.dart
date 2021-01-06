import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TabBarDemo(),
    );
  }
}

class TabBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2, child: Scaffold(
      appBar: AppBar(
        title: Text("Tabbed Navigation"),
        bottom: TabBar(
          tabs: [
            Text("Tab One"),
            Text("Tab Two"),
          ],
        ),
      ),
      body: TabBarView(
        children: [
          Container(
            alignment: Alignment.center,
            color: Colors.blueAccent,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Text("Page One"),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.red,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Text("Page Two"),
          ),
        ],
      ),
    ));
  }
}

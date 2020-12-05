import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ButtonPage(),
    );
  }
}

class ButtonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              onPressed: (){},
              child: Text('Raised Button'),
              color: Colors.red,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
              ),
              splashColor: Colors.white,
              elevation: 10,

            ),
            FlatButton(
              onPressed: (){},
              child: Text('Flat Button'),
              color: Colors.blue,
              minWidth: 200,
              height: 100,
            ),
            OutlineButton(
              onPressed: (){},
              child: Text('Outline Button'),
              padding: EdgeInsets.all(20),
              disabledBorderColor: Colors.red,
              highlightedBorderColor: Colors.green,
              borderSide: BorderSide(
                width: 5,
                color: Colors.orange
              ),

            ),
            IconButton(
              icon: Icon(
                Icons.delete,
                color: Colors.green,
              ),
              onPressed: (){},
              iconSize: 100,
              splashRadius: 100
            )
          ],
        ),
      ),
    ));
  }
}

import 'package:flutter/material.dart';

class SimpleText {
  String printRandomText() {
    return "Data from Simple file";
  }
}

class MyAppBar extends StatelessWidget {
  MyAppBar({this.title});

  // Fields in a Widget subclass are always marked "final".

  final Widget title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.0, // in logical pixels
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(color: Colors.blue[500]),
      // Row is a horizontal, linear layout.
      child: Row(
        // <Widget> is the type of items in the list.
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Navigation menu',
            onPressed: null, // null disables the button
          ),
          // Expanded expands its child to fill the available space.
          Expanded(
            child: title,
          ),
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: null,
          ),
        ],
      ),
    );
  }
}

class MyScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Material is a conceptual piece of paper on which the UI appears.
    return Material(
      // Column is a vertical, linear layout.
      child: Column(
        children: <Widget>[
          MyAppBar(
            title: Text(
              'Example title',
              style: Theme.of(context).primaryTextTheme.title,
            ),
          ),
          Expanded(
            child: Center(
              child: Text('Hello, world!'),
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    title: 'My app', // used by the OS task switcher
    home: MyScaffold(),
  ));
}

//import 'package:flutter/material.dart';
//
//void main(){
//
//  runApp(TestApp01());
////  runApp(MyApp());
//
////  runApp(Center(
////    child: Text(
////      'Hello world!!',
////      textDirection: TextDirection.ltr,
////    ),
////  ));
//}
//
//class TestApp01 extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Material(
//      child: Column(children: <Widget>[AppColumn(
//        title: Text(
//          'Test title',
//          style: Theme.of(context).primaryTextTheme.title,
//        ),
//      ),
//      Expanded(
//        child: Center(
//          child: Text('Hello world!'),
//        ),
//      )],),
//    );
//  }
//}
//
//class AppColumn extends StatelessWidget {
//  AppColumn({this.title});
//
//  final Widget title;
//
//  @override
//  Widget build(BuildContext context) {
//    return Container(height: 56,
//    child: Row(
//      children: <Widget>[
//        IconButton(
//          icon: Icon(Icons.menu),
//          onPressed: null,
//        ),
//
//        Expanded(
//          child: title,
//        )
//      ],
//    ),);
//  }
//}
//
//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//        title: 'Flutter',
//        home: HomePage(),
//        theme: ThemeData(
//        primarySwatch: Colors.red
//    ),
//    );
//  }
//}
//
//class HomePage extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
////      body: Container(),
//      body: Text( "Hello Flutter It is Awesome WOW",
//        textAlign: TextAlign.center,
//        style: TextStyle(
//          color: Colors.red,
//          fontSize: 22.0,
//        ),),
//
//    );
//  }
//}

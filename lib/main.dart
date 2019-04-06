import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Flutter Tutorial',
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new FirstActivity(),
    );
  }
}

class FirstActivity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('First Screen'),
      ),
      body: new Checkbox(
          value: false,
          onChanged: (bool newValue) {
            Navigator.push(
              context,
              new MaterialPageRoute(builder: (context) => new SecondActivity()),
            );
          }),
    );
  }
}

class SecondActivity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('Second Screen'),
        ),
        body: new Center(
          child: new Row(
            children: <Widget>[
              new Checkbox(
                  value: false,
                  onChanged: (bool newValue) {
//            Navigator.pop(context);
                    Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => new ThirdAcivity()),
                    );
                  }),
              new Center(
                child: new Text('You made it to Second Screen'),
              )
            ],
          ),
        ));
  }
}

class ThirdAcivity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Third Screen'),
      ),
//      body: new Text('Third Screen'),

//      body: Image.asset(
//        'assets/account_bal.png',
//        fit: BoxFit.cover,
//      ),

//      body: Icon(
//        Icons.star,
//        color: Colors.red[900],
//      ),

//      body: Center(
//        child: Text('Ohh you are in third scrren now.'),
//      ),

      body: new Checkbox(
          value: false,
          onChanged: (bool newValue) {
            Navigator.push(
              context,
              new MaterialPageRoute(builder: (context) => new FourthActivity()),
            );
          }),
    );
  }
}

class FourthActivity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fourth Screen',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Fourth Activity'),
        ),

//        body: Center(
//          child: Text('You are here in fourth screen.'),
//        ),

        body: new Checkbox(
            value: false,
            onChanged: (bool newValue) {
              Navigator.push(
                context,
                new MaterialPageRoute(builder: (context) => new FifthScreen()),
              );
            }),
      ),
    );
  }
}

class FifthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fifth Screen',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Fifth Activity'),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Center(
                child: Text('Hey Fifth',
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      fontSize: 32,
                      color: Colors.black87,
                    )),
              ),
              Center(
                child: Checkbox(
                    value: false,
                    onChanged: (bool newValue) {
                      Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => new SixthScreen()),
                      );
                    }),
              )
            ],
          )),
    );
  }
}

class SixthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sixth Screen',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Sixth Activity'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text('Text1'),
            Container(
              decoration: BoxDecoration(color: Colors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text('SubText1'),
                  Text('SubText2'),
                  Text('SubText3'),
                ],
              ),
            ),
            Text('Text3'),
            Text('Text4'),
            Text('Text5'),
            Text('Text6'),
//            Image.asset('assets/pic2.jpeg'),
//            Image.asset('assets/pic3.jpg'),
          ],
        ),
      ),
    );
  }
}

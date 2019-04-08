import 'package:flutter/material.dart';
import 'package:flutter_app/simple.dart' as simple;

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
            Text(simple.SimpleText().printRandomText()),
            Text('Text4'),
            Container(
              decoration: BoxDecoration(color: Colors.white),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                      child: Center(
                        child: Text('SubText1-1'),
                      )

                  ),

                  Expanded(
                    child: Text('SubText1-2'),
                  ),
                  Expanded(
                    child: Text('SubText1-3'),
                  )
                ],
              ),
            ),

            iconList,

            ratings,

            Center(
              child: Checkbox(
                  value: false,
                  onChanged: (bool newValue) {
                    Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => new SeventhScreen()),
                    );
                  }),
            ),

//            Image.asset('assets/pic2.jpeg'),
//            Image.asset('assets/pic3.jpg'),
          ],
        ),
      ),
    );
  }
}

class SeventhScreen extends StatelessWidget {
  static final showGrid = true; // Set to false to show ListView

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter layout demo'),
        ),
        body: Center(child: showGrid ? _buildGrid() : _buildList()),
      ),
    );
  }
}

var stars = Row(
  mainAxisSize: MainAxisSize.min,
  children: <Widget>[
    Icon(Icons.star, color: Colors.blue[500]),
    Icon(Icons.star, color: Colors.blue[300]),
    Icon(Icons.star, color: Colors.green[300]),
    Icon(Icons.star, color: Colors.green[500]),
    Icon(Icons.star, color: Colors.green[300]),
    Icon(Icons.star, color: Colors.red[300]),
    Icon(Icons.star, color: Colors.red[500]),
  ],
);

final ratings = Container(
  padding: EdgeInsets.all(20),
  decoration: BoxDecoration(color: Colors.red[50]),
  child: Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      stars,
      Text(
        'All Reviews',
        style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w800,
            fontFamily: 'Roboto',
            letterSpacing: 0.5,
            fontSize: 20
        ),
      )
    ],
  ),
);

final descTextStyle = TextStyle(
  color: Colors.black,
  fontWeight: FontWeight.w800,
  fontFamily: 'Roboto',
  letterSpacing: 0.5,
  fontSize: 18,
  height: 2,
);

// DefaultTextStyle.merge() allows you to create a default text
// style that is inherited by its child and all subsequent children.
final iconList = DefaultTextStyle.merge(
  style: descTextStyle,
  child: Container(
    padding: EdgeInsets.all(20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Icon(Icons.kitchen, color: Colors.green[500]),
            Text('PREP:'),
            Text('25 min'),
          ],
        ),
        Column(
          children: [
            Icon(Icons.timer, color: Colors.green[500]),
            Text('COOK:'),
            Text('1 hr'),
          ],
        ),
        Column(
          children: [
            Icon(Icons.restaurant, color: Colors.green[500]),
            Text('FEEDS:'),
            Text('4-6'),
          ],
        ),
      ],
    ),
  ),
);

final button = Scaffold(
  body: Center(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        RaisedButton(
          onPressed: null,
          child: const Text('Disabled Button'),
        ),
        RaisedButton(
          onPressed: () {},
          child: const Text('Enabled Button'),
        ),
        RaisedButton(
          onPressed: () {},
          textColor: Colors.white,
          padding: const EdgeInsets.all(0.0),
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: <Color>[Colors.red, Colors.green, Colors.blue],
              ),
            ),
            padding: const EdgeInsets.all(10.0),
            child: Text('Gradient Button'),
          ),
        ),
      ],
    ),
  ),
);

// #docregion grid
Widget _buildGrid() =>
    GridView.extent(
        maxCrossAxisExtent: 150,
        padding: const EdgeInsets.all(4),
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        children: _buildGridTileList(30));

// The images are saved with names pic0.jpg, pic1.jpg...pic29.jpg.
// The List.generate() constructor allows an easy way to create
// a list when objects have a predictable naming pattern.
List<Container> _buildGridTileList(int count) =>
    List.generate(
        count, (i) => Container(child: Icon(Icons.star, color: Colors.blue[i%4 * 200])));//,Image.asset('images/pic$i.jpg')
// #enddocregion grid

// #docregion list
Widget _buildList() =>
    ListView(
      children: [
        _tile('CineArts at the Empire', '85 W Portal Ave', Icons.theaters),
        _tile('The Castro Theater', '429 Castro St', Icons.theaters),
        _tile('Alamo Drafthouse Cinema', '2550 Mission St', Icons.theaters),
        _tile('Roxie Theater', '3117 16th St', Icons.theaters),
        _tile('United Artists Stonestown Twin', '501 Buckingham Way',
            Icons.theaters),
        _tile('AMC Metreon 16', '135 4th St #3000', Icons.theaters),
        Divider(),
        _tile('K\'s Kitchen', '757 Monterey Blvd', Icons.restaurant),
        _tile('Emmy\'s Restaurant', '1923 Ocean Ave', Icons.restaurant),
        _tile(
            'Chaiya Thai Restaurant', '272 Claremont Blvd', Icons.restaurant),
        _tile('La Ciccia', '291 30th St', Icons.restaurant),
      ],
    );

ListTile _tile(String title, String subtitle, IconData icon) =>
    ListTile(
      title: Text(title,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 20,
          )),
      subtitle: Text(subtitle),
      leading: Icon(
        icon,
        color: Colors.blue[500],
      ),
    );
// #enddocregion list
}
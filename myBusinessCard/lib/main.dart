import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

void main() {
  runApp(MaterialApp(
    title: 'Navigation Basics',
    home: FirstRoute(),
    debugShowCheckedModeBanner: false,
  ));
}

class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue[500],
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[500],
        title: Text('James Conners'),
      ),
      body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar (
                radius: 70.0,
                backgroundImage: AssetImage('images/james&camille.jpeg'),
              ),
              Center(
                child: Text('James Conners',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                    fontFamily: 'Pacifico',
                  ),
                ),
              ),
              Center(
                child: Text('\nPhD Student',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                    fontFamily: 'SourceSans',
                  ),
                ),
              ),
              Center(
                child: Text('Brigham Young University',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                    fontFamily: 'SourceSans',
                  ),
                ),
              ),
              Center(
                child: Text('Usable Security and Privacy Lab',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                    fontFamily: 'SourceSans',
                  ),
                ),
              ),
              SizedBox(
                height: 5.0,
                width: 300.0,
                child: Divider(
                  color: Colors.white
                )
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(
                        Icons.phone,
                        color: Colors.blue[500],
                      ),
                      title: Text(
                        '(801) 318-4647',
                        style: TextStyle(
                          color: Colors.blueGrey[500],
                          fontFamily: 'SourceSans',
                          fontSize: 20.0,
                        ),
                      ),
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
                child: ListTile(
                  leading:  Icon(
                      Icons.email,
                      color: Colors.blue[500],
                    ),
                    title: Text(
                      'jconners0988@gmail.com',
                      style: TextStyle(
                        color: Colors.blueGrey[500],
                        fontFamily: 'SourceSans',
                        fontSize: 20.0,
                      ),
                    ),
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
                  child: ListTile(
                  leading: Icon(
                      Icons.home,
                      color: Colors.blue[500],
                    ),
                    title:Text(
                      '757 S 400 W, Provo, UT 84601',
                      style: TextStyle(
                        color: Colors.blueGrey[500],
                        fontFamily: 'SourceSans',
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
              Builder(
                builder: (context) => Center(
                child: RaisedButton(
                  child: Text("Business Card"),
                  color: Colors.white,
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SecondRoute()),
                    );
                      },
                    ),
                  ),
                ),
              Builder(
                builder: (context) => Center(
                  child: RaisedButton(
                    child: Text("Resume"),
                    color: Colors.white,
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ThirdRoute()),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
    ),
    );
  }
}


class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.blueGrey[500],
        title: Text('James Conners Business Card'),
        ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Image.asset('images/My_Gallery.png'),
            Center(
              child: RaisedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Back'),
              ),
            ),
          ],
        ),
      ),
    ),
    );
  }
}

class ThirdRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.blueGrey[500],
        title: Text('James Conners Resume'),
        ),
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Image.asset('images/resume.png'),
              Center(
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Back'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


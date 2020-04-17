import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contador de pessoas',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF3F25A8),
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _people = 0;

  void _changePeople({int value}) {
    setState(
      () {
        _people += value;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset(
            'assets/images/restaurante.jpg',
            fit: BoxFit.cover,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Pessoas: $_people',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FlatButton(
                      child: Text(
                        '+1',
                        style: TextStyle(
                          fontSize: 26,
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () {
                        _changePeople(value: 1);
                      },
                    ),
                    FlatButton(
                      child: Text(
                        '-1',
                        style: TextStyle(
                          fontSize: 26,
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () {
                        _changePeople(value: -1);
                      },
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

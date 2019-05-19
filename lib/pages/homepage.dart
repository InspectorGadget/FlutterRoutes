import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomePage'),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'This is the Main Homepage\n',
                style: TextStyle(fontWeight: FontWeight.bold),
                overflow: TextOverflow.ellipsis,
              ),
              Text('This is how Routes Work in Flutter\n'),
              Text(
                '~ An App by Raeveen',
                style: TextStyle(fontWeight: FontWeight.w800)
              ),
              SizedBox(height: 20.0),
              RaisedButton(
                child: Text('Get Started'),
                color: Colors.blue,
                textColor: Colors.white,
                elevation: 7.0,
                onPressed: () {
                  Navigator.of(context)
                  .pushReplacementNamed('/first');
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

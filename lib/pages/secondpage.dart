import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SecondPage'),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('This is Second Page'),
              SizedBox(height: 20.0),
              RaisedButton(
                child: Text('Back to First Page'),
                color: Colors.green,
                textColor: Colors.white,
                elevation: 7.0,
                onPressed: () {
                  Navigator.of(context)
                  .pushReplacementNamed('/first');
                },
              ),
              SizedBox(height: 20.0),
              RaisedButton(
                child: Text('Back to HomePage'),
                color: Colors.blue,
                textColor: Colors.white,
                elevation: 7.0,
                onPressed: () {
                  Navigator.of(context)
                  .pushReplacementNamed('/home');
                },
              )
            ],
          ),
        )
      ),
    );
  }
}

import 'dart:ui';
import 'package:flutter/material.dart';

int _a = 1;

void main() =>  runApp(MaterialApp(
    home: Login()

));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Text('Sansavo'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,

        children: <Widget>[
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget> [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text('Welcome to Sansavo!',
                    style: TextStyle(fontFamily: 'RobotoSlab'),
                  ),
                ),
              ]
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget> [
                Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text(
                        'Get your survey money in your bank account!',
                        style: TextStyle(fontFamily: 'RobotoSlab')
                    )

                ),
              ]
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: RaisedButton(
              color: Colors.lightGreen,
              onPressed: () {Navigator.push( context, MaterialPageRoute(builder: (context) => Purchase()),);},
              child: Text('\$0.25'),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: RaisedButton(
                color: Colors.lightGreen,
                onPressed: () {Navigator.push( context, MaterialPageRoute(builder: (context) => Purchase()),);},
                child: Text('\$1.00')
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10,10,10,10),
            child: RaisedButton(
                color: Colors.lightGreen,
                onPressed: () {Navigator.push( context, MaterialPageRoute(builder: (context) => Purchase()),);},
                child: Text('\$5.00')
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10,10,10,30),
            child: RaisedButton(
              color: Colors.lightGreen,
              onPressed: () {Navigator.push( context, MaterialPageRoute(builder: (context) => Purchase()),);},
              child: Text('\$10.00'),
            ),
          ),
        ],
      ),
    );
  }
}
class Purchase extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Text('Sansavo'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,

        children: <Widget>[
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                    'Would you like to confirm your purchase?'
                ),
              ]
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10,10,10,30),
            child: RaisedButton(
                color: Colors.lightGreen,
                onPressed: () {Navigator.push( context, MaterialPageRoute(builder: (context) => Confirm()),);},
                child: Text('Confirm Purchase')
            ),
          ),
        ],
      ),
    );
  }
}
class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Text('Sansavo'),
        centerTitle: true,
      ),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Flexible(
                    child: TextField(
                      decoration: InputDecoration(
                        icon: Icon(Icons.account_box_outlined),
                        hintText: 'Username',
                        border: const OutlineInputBorder(),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Container(
                      padding: EdgeInsets.all(10),
                    ),
                  ),
                ]
            ),
            Row(
                children: <Widget> [Flexible(
                  child: TextField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.lock_open_rounded),
                      hintText: 'Password',
                      border: const OutlineInputBorder(),
                    ),
                    obscureText: true,
                  ),
                ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Container(
                      padding: EdgeInsets.all(10),
                    ),
                  ),
                ]
            ),
            RaisedButton(onPressed: (){Navigator.push( context, MaterialPageRoute(builder: (context) => Home()),);},
                child: Text('Login')
            ),
          ]
      ),
    );
  }
}
class Confirm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            child: RaisedButton(
                color: Colors.lightGreen,
                onPressed: () {Navigator.push( context, MaterialPageRoute(builder: (context) => Home()),);},
                child: Text('Purchase Confirmed')),
          ),

        ]
    );
  }
}
class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

    );
  }
}

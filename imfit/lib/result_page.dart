import 'package:flutter/material.dart';
import 'package:imfit/icon_content.dart';
import 'package:imfit/reusable_card.dart';

class ResultPage extends StatefulWidget {
  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Congratulations'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Column(
            children: <Widget>[
              ReusableCard(
                colour: Colors.blue,
                cardChild: Text('Your BMI',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 25,
                    )),
                title: true,
              ),
              ReusableCard(
                colour: Colors.blue,
                cardChild: Text('25',
                    style: TextStyle(
                      color: Colors.black26,
                      fontSize: 20,
                    )),
                title: true,
              ),
            ],
          ),
          Column(
            children: <Widget>[
              ReusableCard(
                colour: Colors.blue,
                cardChild: Text('Maintenance Calories',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 25,
                    )),
                title: true,
              ),
              ReusableCard(
                colour: Colors.blue,
                cardChild: Text('2400',
                    style: TextStyle(
                      color: Colors.black26,
                      fontSize: 20,
                    )),
                title: true,
              ),
            ],
          ),
          Column(
            children: <Widget>[
              ReusableCard(
                colour: Colors.blue,
                cardChild: Text('Weight',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 25,
                    )),
                title: true,
              ),
              ReusableCard(
                colour: Colors.blue,
                cardChild: Text('86',
                    style: TextStyle(
                      color: Colors.black26,
                      fontSize: 20,
                    )),
                title: true,
              ),
            ],
          ),
          Column(
            children: <Widget>[
              ReusableCard(
                colour: Colors.blue,
                cardChild: Text('Age',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 25,
                    )),
                title: true,
              ),
              ReusableCard(
                colour: Colors.blue,
                cardChild: Text('30',
                    style: TextStyle(
                      color: Colors.black26,
                      fontSize: 20,
                    )),
                title: true,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

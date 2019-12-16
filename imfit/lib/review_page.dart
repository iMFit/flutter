import 'package:flutter/material.dart';
import 'package:imfit/icon_content.dart';
import 'package:imfit/result_page.dart';
import 'package:imfit/reusable_card.dart';

class ReviewPage extends StatefulWidget {
  @override
  _ReviewPageState createState() => _ReviewPageState();
}

class _ReviewPageState extends State<ReviewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Review'),
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
                cardChild: Text('Gender',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 25,
                    )),
                title: true,
              ),
              ReusableCard(
                colour: Colors.blue,
                cardChild: Text('Male',
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
                cardChild: Text('Height',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 25,
                    )),
                title: true,
              ),
              ReusableCard(
                colour: Colors.blue,
                cardChild: Text('175',
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
              ReusableCard(
                colour: Colors.blue,
                cardChild: RaisedButton(
                  textColor: Colors.white,
                  color: Colors.blue,
                  child: new Text('Submit'),
                  padding: const EdgeInsets.all(8.0),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ResultPage()),
                    );
                  },
                ),
                title: true,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

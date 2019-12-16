import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:imfit/icon_content.dart';
import 'package:imfit/review_page.dart';
import 'reusable_card.dart';

const activeCardColor = Colors.blueAccent;
const inactiveCardColor = Colors.white70;
enum gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  gender selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('I M Fit'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          ReusableCard(
            colour: Colors.blue,
            cardChild: Text('Gender',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 50,
                )),
            title: true,
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedGender = gender.male;
                    });
                  },
                  child: ReusableCard(
                    colour: selectedGender == gender.male
                        ? activeCardColor
                        : inactiveCardColor,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.mars,
                      label: 'Male',
                      color: selectedGender == gender.male
                          ? inactiveCardColor
                          : activeCardColor,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedGender = gender.female;
                    });
                  },
                  child: ReusableCard(
                    colour: selectedGender == gender.female
                        ? activeCardColor
                        : inactiveCardColor,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.venus,
                      label: 'Female',
                      color: selectedGender == gender.female
                          ? inactiveCardColor
                          : activeCardColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
          ReusableCard(
            colour: Colors.blue,
            cardChild: RaisedButton(
              textColor: Colors.white,
              color: Colors.blue,
              child: new Text('Add Height'),
              padding: const EdgeInsets.all(8.0),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Height()),
                );
              },
            ),
            title: true,
          ),
        ],
      ),
    );
  }
}

class Height extends StatefulWidget {
  @override
  _HeightState createState() => _HeightState();
}

class _HeightState extends State<Height> {
  var _duelCommandment = 175.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('I M Fit'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          ReusableCard(
            colour: Colors.blue,
            cardChild: Text('Height',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 50,
                )),
            title: true,
          ),
          Slider(
            value: _duelCommandment.toDouble(),
            divisions: 50,
            min: 150,
            max: 200,
            label: '$_duelCommandment',
            onChanged: (double values) {
              print(values);
              setState(() {
                _duelCommandment = values;
              });
            },
          ),
          ReusableCard(
            colour: Colors.blue,
            cardChild: Text('$_duelCommandment',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 30,
                )),
            title: true,
          ),
          ReusableCard(
            colour: Colors.blue,
            cardChild: RaisedButton(
              textColor: Colors.white,
              color: Colors.blue,
              child: new Text('Add Weight'),
              padding: const EdgeInsets.all(8.0),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Weight()),
                );
              },
            ),
            title: true,
          ),
        ],
      ),
    );
  }
}

class Weight extends StatefulWidget {
  @override
  _WeightState createState() => _WeightState();
}

class _WeightState extends State<Weight> {
  var _duelCommandment = 50.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('I M Fit'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          ReusableCard(
            colour: Colors.blue,
            cardChild: Text('Weight',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 50,
                )),
            title: true,
          ),
          Slider(
            value: _duelCommandment.toDouble(),
            divisions: 80,
            min: 40,
            max: 120,
            label: '$_duelCommandment',
            onChanged: (double values) {
              print(values);
              setState(() {
                _duelCommandment = values;
              });
            },
          ),
          ReusableCard(
            colour: Colors.blue,
            cardChild: Text('$_duelCommandment',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 30,
                )),
            title: true,
          ),
          ReusableCard(
            colour: Colors.blue,
            cardChild: RaisedButton(
              textColor: Colors.white,
              color: Colors.blue,
              child: new Text('Add Age'),
              padding: const EdgeInsets.all(8.0),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Age()),
                );
              },
            ),
            title: true,
          ),
        ],
      ),
    );
  }
}

class Age extends StatefulWidget {
  @override
  _AgeState createState() => _AgeState();
}

class _AgeState extends State<Age> {
  @override
  var _duelCommandment = 30.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('I M Fit'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          ReusableCard(
            colour: Colors.blue,
            cardChild: Text('Age',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 50,
                )),
            title: true,
          ),
          Slider(
            value: _duelCommandment.toDouble(),
            divisions: 85,
            min: 15,
            max: 100,
            label: '$_duelCommandment',
            onChanged: (double values) {
              print(values);
              setState(() {
                _duelCommandment = values;
              });
            },
          ),
          ReusableCard(
            colour: Colors.blue,
            cardChild: Text('$_duelCommandment',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 30,
                )),
            title: true,
          ),
          ReusableCard(
            colour: Colors.blue,
            cardChild: RaisedButton(
              textColor: Colors.white,
              color: Colors.blue,
              child: new Text('Review'),
              padding: const EdgeInsets.all(8.0),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ReviewPage()),
                );
              },
            ),
            title: true,
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:imfit/icon_content.dart';
import 'reusable_card.dart';

const activeCardColor = Colors.blueAccent;
const inactiveCardColor = Colors.white;
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Height()),
                    );
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Height()),
                    );
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
            onChangeEnd: (double values) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Weight()),
              );
            },
          ),
          ReusableCard(
            colour: Colors.blue,
            cardChild: Text('$_duelCommandment',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 40,
                )),
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
                  fontSize: 40,
                )),
            title: true,
          ),
        ],
      ),
    );
  }
}

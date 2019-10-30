import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('I M FIT'),
          backgroundColor: Colors.blueGrey,
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Macro Calculator',
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 30.0,
                    fontWeight: FontWeight.normal,
                  )),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
                child: Text(
                    'Use this page to input current weight, goal weight and age to calculate macros',
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 15.0,
                      fontWeight: FontWeight.normal,
                    )),
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: ListTile(
                    title: Text(
                      'Current Weight',
                      style: TextStyle(
                          letterSpacing: 1,
                          fontSize: 15,
                          color: Colors.blueGrey[800]),
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: ListTile(
                    title: Text(
                      'Goal Weight',
                      style: TextStyle(
                          letterSpacing: 1,
                          fontSize: 15,
                          color: Colors.blueGrey[800]),
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: ListTile(
                    title: Text(
                      'Age',
                      style: TextStyle(
                          letterSpacing: 1,
                          fontSize: 15,
                          color: Colors.blueGrey[800]),
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: ListTile(
                    title: Text(
                      'Sex',
                      style: TextStyle(
                          letterSpacing: 1,
                          fontSize: 15,
                          color: Colors.blueGrey[800]),
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: ListTile(
                    title: Text(
                      'Activity Level',
                      style: TextStyle(
                          letterSpacing: 1,
                          fontSize: 15,
                          color: Colors.blueGrey[800]),
                    ),
                  ),
                ),
              ),
              Container(
                child: Padding(
                  padding: EdgeInsets.all(5.0),
                  child: new ButtonBar(
                    children: <Widget>[
                      FlatButton(
                        color: Colors.blueGrey,
                        child: const Text('Calculate'),
                        shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(30.0)),
                        textColor: Colors.white,
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.blueGrey,
              ),
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.add,
                color: Colors.blueGrey,
              ),
              title: Text('Add Food'),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.account_box,
                color: Colors.blueGrey,
              ),
              title: Text('Profile'),
            ),
          ],
        ),
      ),
    );
  }
}

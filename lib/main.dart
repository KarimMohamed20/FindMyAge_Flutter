import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(home: MyApp()));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // Input Controller
  final ageController = new TextEditingController();

  // Age Of SetState In TextField
  var age = "0";

  @override
  Widget build(BuildContext context) {
    return new Container(
      // Scaffold
                child: new Scaffold(
                  // The AppBar
                  appBar: new AppBar(
                    // Title Of AppBar
                    title: new Text("Calculate Your Age"),
                    // To Center The Title
                    centerTitle: true,
                    // BackGround Of AppBar
                    backgroundColor: Colors.red,
                  ),
                  // Body
                  body:
                      // Container For The Column
                      new Container(
                        child: new Column(
                          // To Center The Objects And Make Spaces Between It
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          // The Children {TextField, Button, Text, SetState}
                          children: <Widget>[
                            new TextField(
                                controller: ageController,
                                // To Make A Hint
                                decoration: new InputDecoration(
                                  // Hint
                                  hintText: "Enter Your Year You Born in It",
                                  // Hint Style
                                  hintStyle: new TextStyle(color: Colors.blue[800]),
                                ),
                                // To Get Age Of User By Submit
                                onSubmitted: (txt) {
                                  setState(() {
                                    // To Change The String Into Integer
                                    age = (int.parse("2018") - int.parse("" + ageController.text)).toString();
                                  });
                                }),
                            new Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                new InkWell(
                                  child: new Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: new Icon(
                                      Icons.edit,
                                      color: Colors.red[900],
                                      size: 30.0,
                                    ),
                                  ),
                                  onTap: () {
                                    setState(() {
                                      age = (int.parse("2018") -
                                              int.parse("" + ageController.text))
                                          .toString();
                                    });
                                  },
                                  splashColor: Colors.redAccent,
                                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                ),
                                new Text(
                                  "Calculate Your Age",
                                  style: new TextStyle(color: Colors.red[800]),
                                )
                              ],
                            ),
                            new Text(
                              "Your Age is:$age",
                              style: new TextStyle(color: Colors.blue[700], fontSize: 30.0),
                            ),
                          ],
                        ),
                      ),
                    backgroundColor: Colors.yellowAccent,
                ),
    );
  }
}
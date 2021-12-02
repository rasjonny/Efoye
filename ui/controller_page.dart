// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class Controller extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  Controller({Key? key}) : super(key: key);

  @override
  ControllerState createState() => ControllerState();
}

class ControllerState extends State<Controller> {
  String statusAuto = '';

  String statusMusic = '';
  String statusFan = '';
  String statusMotor = '';

  double width = 150;
  bool valAuto = false;
  bool valMotor = false;
  bool valMusic = false;
  bool valFan = false;

  // ignore: must_call_super

  @override
  Widget build(BuildContext context) {
    statusAuto = statusAwait('Auto').toString();
    statusMusic = statusAwait('Music').toString();
    statusFan = statusAwait('Fan').toString();
    statusMotor = statusAwait('Motor').toString();
    valAuto = statusValue(statusAuto);
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(children: [
      Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('/images/babyThree.jpg'), fit: BoxFit.cover),
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(
                sigmaX: 5.0, sigmaY: 5.0, tileMode: TileMode.clamp),
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      height: 200,
                      width: MediaQuery.of(context).size.width / 2,
                      child: Card(
                        elevation: 10,
                        color: Colors.black.withOpacity(0.5),
                        child: Center(
                          child: Text(
                            'Auto',
                            style: TextStyle(fontSize: 40),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2,
                      height: 200,
                      child: Card(
                        elevation: 10,
                        color: Colors.black.withOpacity(0.5),
                        // color: Colors.transparent,
                        child: Center(
                          child: Switch(
                              value: valAuto,
                              onChanged: (newVal) {
                                setState(() {
                                  valAuto = newVal;
                                });

                                if (valAuto) {
                                  FirebaseDatabase.instance
                                      .reference()
                                      .child("Controller")
                                      .child('Auto')
                                      .set("ON");
                                } else {
                                  FirebaseDatabase.instance
                                      .reference()
                                      .child('Controller')
                                      .child('Auto')
                                      .set('OFF');
                                }
                              }),
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      height: 200,
                      width: width,
                      child: Card(
                        elevation: 10,
                        color: Colors.black.withOpacity(0.5),
                        child: Center(
                          child: Text(
                            'Motor',
                            style: TextStyle(fontSize: 40),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: width,
                      height: 200,
                      child: Card(
                        elevation: 10,
                        color: Colors.black.withOpacity(0.5),
                        child: Center(
                          child: Switch(
                              value: valMotor,
                              onChanged: (newVal) async {
                                setState(() {
                                  valMotor = newVal;
                                });

                                if (valMotor) {
                                  await FirebaseDatabase.instance
                                      .reference()
                                      .child("Controller")
                                      .child('Motor')
                                      .set("ON");
                                } else {
                                  FirebaseDatabase.instance
                                      .reference()
                                      .child('Controller')
                                      .child('Motor')
                                      .set('OFF');
                                }
                              }),
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      height: 200,
                      width: width,
                      child: Card(
                        elevation: 10,
                        color: Colors.black.withOpacity(0.5),
                        child: Center(
                          child: Text(
                            'Fan',
                            style: TextStyle(fontSize: 40),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: width,
                      height: 200,
                      child: Card(
                        elevation: 10,
                        color: Colors.black.withOpacity(0.5),
                        child: Center(
                          child: Switch(
                              value: valFan,
                              onChanged: (newVal) {
                                setState(() {
                                  valFan = newVal;
                                });

                                if (valFan) {
                                  FirebaseDatabase.instance
                                      .reference()
                                      .child("Controller")
                                      .child('Fan')
                                      .set("ON");
                                } else {
                                  FirebaseDatabase.instance
                                      .reference()
                                      .child('Controller')
                                      .child('Fan')
                                      .set('OFF');
                                }
                              }),
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      height: 200,
                      width: width,
                      child: Card(
                        elevation: 10,
                        color: Colors.black.withOpacity(0.5),
                        child: Center(
                          child: Text(
                            'Music',
                            style: TextStyle(fontSize: 40),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: width,
                      height: 200,
                      child: Card(
                        elevation: 10,
                        color: Colors.black.withOpacity(0.5),
                        child: Center(
                          child: Switch(
                              value: valMusic,
                              onChanged: (newVal) async {
                                setState(() {
                                  valMusic = newVal;
                                });
                                if (valMusic) {
                                  FirebaseDatabase.instance
                                      .reference()
                                      .child("Controller")
                                      .child('Music')
                                      .set("ON");
                                } else {
                                  FirebaseDatabase.instance
                                      .reference()
                                      .child('Controller')
                                      .child('Music')
                                      .set('OFF');
                                }
                              }),
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      height: 200,
                      width: width,
                      child: Card(
                        elevation: 10,
                        color: Colors.black.withOpacity(0.5),
                        child: Center(
                          child: Text(
                            'Humidity',
                            style: TextStyle(fontSize: 40),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: width,
                      height: 200,
                      child: Card(
                        elevation: 10,
                        color: Colors.black.withOpacity(0.5),
                        child: Center(
                          child: Text('data'),
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      height: 200,
                      width: width,
                      child: Card(
                        elevation: 10,
                        color: Colors.black.withOpacity(0.5),
                        child: Center(
                          child: Text(
                            'Temperature',
                            style: TextStyle(fontSize: 40),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: width,
                      height: 200,
                      child: Card(
                        elevation: 10,
                        color: Colors.black.withOpacity(0.5),
                        child: Center(child: Text('data')),
                      ),
                    )
                  ],
                )
              ],
            ),
          ))
    ])));
  }

  Future<DataSnapshot> statusAwait(String value) async {
    DataSnapshot dataSnapshot = await FirebaseDatabase.instance
        .reference()
        .child("Controller")
        .child(value)
        .get();
    return dataSnapshot;
  }

  bool statusValue(String value) {
    switch (value) {
      case 'statusAuto':
        {
          if (statusAuto == 'ON') {
            setState(() {
              valAuto = true;
            });
            return true;
          } else {
            return false;
          }
        }
      case 'statusMusic':
        {
          if (statusMusic == 'ON') {
            setState(() {
              valMusic = true;
            });
            return true;
          } else {
            return false;
          }
        }
      case 'statusFan':
        {
          if (statusFan == 'ON') {
            setState(() {
              valFan = true;
            });
            return true;
          } else {
            return false;
          }
        }
      case 'statusMotor':
        {
          if (statusMotor == 'ON') {
            setState(() {
              valMotor = true;
            });
            return true;
          } else {
            return false;
          }
        }
    }

    return false;
  }
}

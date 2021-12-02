// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class AboutUs extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  AboutUs({Key? key}) : super(key: key);

  @override
  AboutUsState createState() => AboutUsState();
}

class AboutUsState extends State<AboutUs> {
  double height = 100;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(color: Colors.black),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: height,
                    width: MediaQuery.of(context).size.width,
                    child: Center(
                      child: Card(
                        color: Colors.transparent,
                        child: Text(
                          "Let's talk about Us",
                          style: TextStyle(
                            fontSize: 40,
                            color: Colors.cyan,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    child: Center(
                      child: Card(
                          color: Colors.transparent,
                          elevation: 20,
                          child: CircleAvatar(
                              radius: 200,
                              backgroundImage: AssetImage('/images/baby.jpg'))),
                    ),
                  ),
                  SizedBox(
                    height: 320,
                    width: MediaQuery.of(context).size.width,
                    child: Center(
                      child: Card(
                        color: Colors.transparent,
                        child: RichText(
                            text: TextSpan(children: const [
                          TextSpan(
                            text: ' Yohannes Solomon\n',
                            style: TextStyle(
                              fontSize: 40,
                              color: Colors.cyanAccent,
                            ),
                          ),
                          TextSpan(
                              text: '\n Mobile app Developer\n',
                              style: TextStyle(
                                  fontSize: 25, color: Colors.lightBlueAccent)),
                          TextSpan(
                            text:
                                '\n\n A group become a team when each member is sure enough of him self and his contributions to praise the skill of others no one can whistle a symphony it takes an orchestra to play it.',
                            style: TextStyle(
                                fontStyle: FontStyle.italic,
                                color: Colors.white70,
                                fontSize: 25),
                          )
                        ])),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    child: Center(
                      child: Card(
                          color: Colors.transparent,
                          elevation: 20,
                          child: CircleAvatar(
                              radius: 200,
                              backgroundImage: AssetImage('/images/baby.jpg'))),
                    ),
                  ),
                  SizedBox(
                    height: 350,
                    width: MediaQuery.of(context).size.width,
                    child: Center(
                      child: Card(
                        color: Colors.transparent,
                        child: RichText(
                            text: TextSpan(children: const [
                          TextSpan(
                            text: ' Gedion H/gebrel\n',
                            style: TextStyle(
                                fontSize: 40, color: Colors.cyanAccent),
                          ),
                          TextSpan(
                              text: '\n Website Developer\n',
                              style: TextStyle(
                                  fontSize: 25, color: Colors.lightBlueAccent)),
                          TextSpan(
                            text:
                                '\n\n The strength of the team is each individual member.The strength of each member is the team. If you can laugh together you can work together.Silence is not golden.It is deadly.',
                            style: TextStyle(
                                fontStyle: FontStyle.italic,
                                color: Colors.white70,
                                fontSize: 25),
                          )
                        ])),
                      ),
                    ),
                  ),
                ],
              ),
            )));
  }
}

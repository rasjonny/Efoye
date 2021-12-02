// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  LandingPage({Key? key}) : super(key: key);

  @override
  LandingPageState createState() => LandingPageState();
}

class LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("/images/baby.jpg"),
              ),
            ),
            child: Text(
              'Welcome to Efoye',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/baby.jpg"),
              ),
            ),
            child: Text(
              'Welcome to Efoye',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/baby.jpg"),
              ),
            ),
            child: Text(
              '''Efoye is a baby monitoring system which is offered for parents to monitor their from any where at any time and any place እና ይህ ደስ የሚል ነው።
              Efoye is a baby monitoring system which is offered for parents to monitor their from any where at any time and any place እና ይህ ደስ የሚል ነው።
              Efoye is a baby monitoring system which is offered for parents to monitor their from any where at any time and any place እና ይህ ደስ የሚል ነው።
              Efoye is a baby monitoring system which is offered for parents to monitor their from any where at any time and any place እና ይህ ደስ የሚል ነው።
              Efoye is a baby monitoring system which is offered for parents to monitor their from any where at any time and any place እና ይህ ደስ የሚል ነው።
              Efoye is a baby monitoring system which is offered for parents to monitor their from any where at any time and any place እና ይህ ደስ የሚል ነው።
              Efoye is a baby monitoring system which is offered for parents to monitor their from any where at any time and any place እና ይህ ደስ የሚል ነው።
              Efoye is a baby monitoring system which is offered for parents to monitor their from any where at any time and any place እና ይህ ደስ የሚል ነው።
              Efoye is a baby monitoring system which is offered for parents to monitor their from any where at any time and any place እና ይህ ደስ የሚል ነው።
              Efoye is a baby monitoring system which is offered for parents to monitor their from any where at any time and any place እና ይህ ደስ የሚል ነው።
              Efoye is a baby monitoring system which is offered for parents to monitor their from any where at any time and any place እና ይህ ደስ የሚል ነው።
              Efoye is a baby monitoring system which is offered for parents to monitor their from any where at any time and any place እና ይህ ደስ የሚል ነው።
              Efoye is a baby monitoring system which is offered for parents to monitor their from any where at any time and any place እና ይህ ደስ የሚል ነው።
              Efoye is a baby monitoring system which is offered for parents to monitor their from any where at any time and any place እና ይህ ደስ የሚል ነው።
              Efoye is a baby monitoring system which is offered for parents to monitor their from any where at any time and any place እና ይህ ደስ የሚል ነው።
              Efoye is a baby monitoring system which is offered for parents to monitor their from any where at any time and any place እና ይህ ደስ የሚል ነው።
              Efoye is a baby monitoring system which is offered for parents to monitor their from any where at any time and any place እና ይህ ደስ የሚል ነው።
              Efoye is a baby monitoring system which is offered for parents to monitor their from any where at any time and any place እና ይህ ደስ የሚል ነው።
              Efoye is a baby monitoring system which is offered for parents to monitor their from any where at any time and any place እና ይህ ደስ የሚል ነው።
              Efoye is a baby monitoring system which is offered for parents to monitor their from any where at any time and any place እና ይህ ደስ የሚል ነው።
              ''',
              style: TextStyle(fontSize: 10),
            ),
          )
        ],
      ),
    );
  }
}

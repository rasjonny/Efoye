// ignore_for_file: prefer_const_constructors

import 'package:efoye/net/flutter_fire.dart';
import 'package:efoye/ui/controller_page.dart';
import 'package:flutter/material.dart';

//import 'home_view.dart';

class Authentication extends StatefulWidget {
  const Authentication({Key? key}) : super(key: key);

  @override
  AuthenticationState createState() => AuthenticationState();
}

class AuthenticationState extends State<Authentication> {
  TextEditingController password = TextEditingController();
  TextEditingController email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(
          'Efoye',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        )),
        body: SingleChildScrollView(
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                const SizedBox(
                  height: 25,
                ),
                buildTextField(
                    title: 'Email',
                    controller: email,
                    hints: "something@gmail.com"),
                const SizedBox(
                  height: 20,
                ),
                buildTextField(
                    title: 'password', controller: password, hints: "password"),
                const SizedBox(
                  height: 32,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size.fromHeight(50),
                      textStyle: TextStyle(fontSize: 20)),
                  onPressed: () async {
                    bool shouldNavigate =
                        await signIn(email.text, password.text);
                    if (shouldNavigate) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => (Controller()),
                        ),
                      );
                    }
                  },
                  child: Text('SIGNIN'),
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size.fromHeight(50),
                      textStyle: TextStyle(fontSize: 20)),
                  onPressed: () async {
                    bool shouldNavigate =
                        await register(email.text, password.text);
                    if (shouldNavigate) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => (Controller()),
                        ),
                      );
                    }
                  },
                  child: Text('REGISTER'),
                ),
              ],
            )));
  }

  Widget buildTextField(
          {required String title,
          required TextEditingController controller,
          String hints = ""}) =>
      (Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          TextField(
            controller: controller,
            decoration:
                InputDecoration(border: OutlineInputBorder(), hintText: hints),
          ),
        ],
      ));
}

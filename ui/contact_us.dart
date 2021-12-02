// ignore_for_file: prefer_const_constructors

import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

class ContactUs extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  ContactUs({Key? key}) : super(key: key);

  @override
  ContactUsState createState() => ContactUsState();
}

class ContactUsState extends State<ContactUs> {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController message = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'ContactUs Page',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(15),
          child: Column(children: [
            buildTextField(title: 'Name', controller: name, hints: "your name"),
            const SizedBox(
              height: 15,
            ),
            buildTextField(
                title: 'Email',
                controller: email,
                hints: "your email(something@gmail.com)"),
            buildTextField(
                title: 'Message',
                controller: message,
                maxlines: 10,
                hints: "write us something"),
            const SizedBox(
              height: 32,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: Size.fromHeight(50),
                    textStyle: TextStyle(fontSize: 20)),
                onPressed: () {
                  launchEmail(
                      userEmail: email.text,
                      userName: name.text,
                      message: message.text);
                },
                child: Text('SEND'))
          ]),
        ));
  }

  Widget buildTextField(
          {required String title,
          required TextEditingController controller,
          int maxlines = 1,
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
            maxLines: maxlines,
          ),
        ],
      ));
  Future launchEmail(
      {required String userName,
      required String userEmail,
      required String message}) async {
    String serviceId = 'service_2ljmb7x';
    String templateId = 'template_6nd5ek8';
    String userId = 'user_E2OmyNIVUVk0gdB8SCTxl';
    String userEmail = 'yohannessol06@gmail.com';
    String subjectIs = 'Efoye mobile app';
    final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');
    //'mailto:$receipent?subject=${Uri.encodeFull(subjectIs)}&body=${Uri.encodeFull(message)}';
    await http.post(
      url,
      headers: {'Content-type': 'application/json'},
      body: jsonEncode(
        {
          'service_id': serviceId,
          'template_id': templateId,
          'user_id': userId,
          'template_params': {
            'user_email': userEmail,
            'user_name': userName,
            'user_message': message,
            'user_subject': subjectIs
          }
        },
      ),
    );
  }
}

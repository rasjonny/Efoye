// ignore_for_file: prefer_const_constructors

import 'package:efoye/ui/about_us.dart';
import 'package:efoye/ui/authentication.dart';
import 'package:efoye/ui/contact_us.dart';
import 'package:flutter/material.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              'Efoye menu',
              style: TextStyle(color: Colors.lightBlueAccent, fontSize: 25),
            ),
            decoration: BoxDecoration(
                color: Colors.blueGrey,
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/babyThree.jpg'))),
          ),
          ListTile(
            leading: Icon(Icons.login),
            title: Text('Login'),
            onTap: () => {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => Authentication()))
            },
          ),
          ListTile(
            leading: Icon(Icons.verified_user),
            title: Text('Profile'),
            onTap: () => {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => AboutUs()))
            },
          ),
          ListTile(
              leading: Icon(Icons.border_color),
              title: Text('Contact Us'),
              onTap: () => {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => ContactUs(),
                      ),
                    )
                  }),
          ListTile(
            leading: Icon(Icons.border_color),
            title: Text('Feedback'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Logout'),
            onTap: () => {Navigator.of(context).pop()},
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'MyHallo.dart';
import 'MyHomePage.dart';
import 'MyNotifications.dart';
import 'MyPermissions.dart';
import 'MyPrivacy_Data.dart';
import 'MyProfile.dart';
import 'MySign_Up.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Setting'),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          leading: IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const HomePage()));
            },
            icon: Icon(
              Icons.close,
            ),
          )),
      body: Column(
        children: [
          Card(
            margin: EdgeInsets.only(left: 8),
            color: Colors.transparent,
            elevation: 0,
            child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
              ListTile(
                  title: Row(children: [
                Text(
                  'Personal Onformation',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                )
              ]))
            ]),
          ),
          Card(
            margin: EdgeInsets.only(left: 8),
            color: Colors.transparent,
            elevation: 0,
            child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
              ListTile(
                  title: Row(children: [
                TextButton(
                    child: Text(
                      'Edit Profile',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.normal,
                          color: Colors.black),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MyProfile()));
                    })
              ]))
            ]),
          ),
          Card(
            margin: EdgeInsets.only(left: 8),
            color: Colors.transparent,
            elevation: 0,
            child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
              ListTile(
                  title: Row(children: [
                TextButton(
                    child: Text(
                      'Notifications',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.normal,
                          color: Colors.black),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Notifications()));
                    })
              ]))
            ]),
          ),
          Card(
            margin: EdgeInsets.only(left: 8),
            color: Colors.transparent,
            elevation: 0,
            child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
              ListTile(
                  title: Row(children: [
                TextButton(
                    child: Text(
                      'Permissions',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.normal,
                          color: Colors.black),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Permissions()));
                    })
              ]))
            ]),
          ),
          Card(
            margin: EdgeInsets.only(left: 8),
            color: Colors.transparent,
            elevation: 0,
            child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
              ListTile(
                  title: Row(children: [
                TextButton(
                    child: Text(
                      'Privacy & Data',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.normal,
                          color: Colors.black),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Privasi_Data()));
                    })
              ]))
            ]),
          ),
          Card(
            margin: EdgeInsets.only(left: 8),
            color: Colors.transparent,
            elevation: 0,
            child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
              ListTile(
                  title: Row(children: [
                Text(
                  'Actions',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                )
              ]))
            ]),
          ),
          Card(
            margin: EdgeInsets.only(left: 8),
            color: Colors.transparent,
            elevation: 0,
            child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
              ListTile(
                  title: Row(children: [
                TextButton(
                    child: Text(
                      'Add Account',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.normal,
                          color: Colors.black),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignUp()));
                    })
              ]))
            ]),
          ),
          Card(
            margin: EdgeInsets.only(left: 8),
            color: Colors.transparent,
            elevation: 0,
            child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
              ListTile(
                  title: Row(children: [
                TextButton(
                    child: Text(
                      'Log Out',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.normal,
                          color: Colors.black),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Hallo()));
                    })
              ]))
            ]),
          ),
        ],
      ),
    );
  }
}

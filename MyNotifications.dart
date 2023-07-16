import 'package:flutter/material.dart';

import 'MySetting.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(243, 163, 142, 105),
        appBar: AppBar(
            title: Text('Notifications',
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold)),
            centerTitle: true,
            backgroundColor: Colors.transparent,
            leading: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Setting()));
              },
              icon: Icon(
                Icons.close,
              ),
            )),
        body: Center(
          child: ListView(
            children: [
              ListTile(
                title: Text('On App'),
                subtitle: Text(
                    'Pick which notifications to see white in the app or on the site.'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                title: Text('By Email'),
                subtitle: Text('Pick which notifications to get by email.'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                title: Text('By Puhs Notification'),
                subtitle: Text('Pick which notifications to get on your phone'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ],
          ),
        ));
  }
}

import 'package:flutter/material.dart';

import 'MySetting.dart';

class Privasi_Data extends StatefulWidget {
  const Privasi_Data({super.key});

  @override
  State<Privasi_Data> createState() => _Privasi_DataState();
}

class _Privasi_DataState extends State<Privasi_Data> {
  bool s1 = false, s2 = false, s3 = true, s4 = true, s5 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('Privacy & Data'),
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
        body: Container(
            padding: EdgeInsets.only(top: 20, left: 20, right: 20),
            alignment: Alignment.topLeft,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SwitchListTile(
                  //switch at right side of label
                  value: s1,
                  onChanged: (bool value) {
                    setState(() {
                      s1 = value; //update value when sitch changed
                    });
                  },
                  title: Text("Show Your Email",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.normal))),
              SwitchListTile(
                  //switch at right side of label
                  value: s2,
                  onChanged: (bool value) {
                    setState(() {
                      s2 = value; //update value when sitch changed
                    });
                  },
                  title: Text("Privacy Account",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.normal))),
              SwitchListTile(
                  //switch at right side of label
                  value: s3,
                  onChanged: (bool value) {
                    setState(() {
                      s3 = value; //update value when sitch changed
                    });
                  },
                  title: Text("Search Privacy",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.normal))),
              SwitchListTile(
                  //switch at right side of label
                  value: s4,
                  onChanged: (bool value) {
                    setState(() {
                      s4 = value; //update value when sitch changed
                    });
                  },
                  title: Text("Download on Wi-Fi",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.normal))),
              SwitchListTile(
                  //switch at right side of label
                  value: s5,
                  onChanged: (bool value) {
                    setState(() {
                      s5 = value; //update value when sitch changed
                    });
                  },
                  title: Text("Download on Cellular Data",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.normal))),
            ])));
  }
}

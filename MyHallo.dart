import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'MyLogin.dart';
import 'MyProvider.dart';
import 'MySign_Up.dart';

class Hallo extends StatefulWidget {
  const Hallo({super.key});

  @override
  State<Hallo> createState() => _HalloState();
}

class _HalloState extends State<Hallo> {
  @override
  Widget build(BuildContext context) {
    var prov = Provider.of<MyProviderLogin>(context);
    return Scaffold(
      body: Column(children: [
        Row(
          children: [
            Padding(padding: EdgeInsets.all(60)),
            Image.asset('../assets/Hello!.png'),
            Image.asset(
              '../assets/Hi.png',
              height: 150,
              width: 125,
            )
          ],
        ),
        Container(
            width: 500,
            height: 450,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Color.fromARGB(243, 249, 180, 61),
            ),
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: prov.tfemail,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      errorText: prov.isEmailEmpty ? "Email is required" : null,
                      prefixIcon: Icon(Icons.mail, color: Colors.black),
                      filled: true,
                      hintText: 'Enter Your Email',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(),
                        borderRadius: BorderRadius.circular(10),
                      )),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(flex: 5, child: Container()),
                    Expanded(
                      flex: 90,
                      child: ElevatedButton(
                        child: Text('Continue'),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Login()));
                        },
                        style: ElevatedButton.styleFrom(
                            primary: Colors.blue,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            textStyle: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold)),
                      ),
                    ),
                    Expanded(flex: 5, child: Container()),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text("or",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black)),
              Card(
                margin: EdgeInsets.all(10),
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(15)),
                color: Colors.green[100],
                shadowColor: Colors.blueGrey,
                elevation: 10,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const ListTile(
                      leading: Icon(Icons.facebook_sharp,
                          color: Colors.black, size: 30),
                      title: Text(
                        "Continue With Facebook",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ),
              Card(
                margin: EdgeInsets.all(10),
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(15)),
                color: Colors.green[100],
                shadowColor: Colors.blueGrey,
                elevation: 10,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const ListTile(
                      leading: Icon(Icons.apple, color: Colors.black, size: 30),
                      title: Text(
                        "Continue With Apple",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ),
              Card(
                margin: EdgeInsets.all(10),
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(15)),
                color: Colors.green[100],
                shadowColor: Colors.blueGrey,
                elevation: 10,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ListTile(
                      leading: Image.asset(
                        "../assets/google-icon.png",
                        color: Colors.black,
                        height: 25,
                        width: 25,
                      ),
                      title: Text(
                        "Continue With Google",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ),
              Card(
                margin: EdgeInsets.only(left: 10),
                color: Colors.transparent,
                elevation: 0,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ListTile(
                        title: Row(
                      children: [
                        Text(
                          'Dont have an account?',
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        TextButton(
                            child: Text(
                              'Sign Un',
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(255, 101, 15, 1)),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const SignUp()));
                            })
                      ],
                    )),
                  ],
                ),
              ),
            ]))
      ]),
    );
  }
}

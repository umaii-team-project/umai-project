import 'package:flutter/material.dart';
// import 'package:flutter_application_2/lib/main.dart';

import 'package:provider/provider.dart';

import 'MyForgetPassword.dart';
import 'MyHallo.dart';
import 'MyHomePage.dart';
import 'MyProvider.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _obcurepassword = true;
  @override
  Widget build(BuildContext context) {
    var prov = Provider.of<MyProviderLogin>(context);
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color.fromARGB(243, 249, 180, 61),
          leading: IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Hallo()));
            },
            icon: Icon(
              Icons.close,
            ),
          )),
      body: Column(
        children: [
          Row(children: <Widget>[
            Padding(padding: EdgeInsets.all(60)),
            Image.asset('Login(1).png'),
            Image.asset(
              'Login.png',
              width: 250,
              height: 200,
            )
          ]),
          Container(
              width: 500,
              height: 250,
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
                        errorText:
                            prov.isEmailEmpty ? "Email is required" : null,
                        prefixIcon: Icon(Icons.mail, color: Colors.black),
                        filled: true,
                        hintText: 'Enter Your Email',
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(),
                          borderRadius: BorderRadius.circular(10),
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    obscureText: _obcurepassword,
                    controller: prov.tfpass,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              _obcurepassword = !_obcurepassword;
                            });
                          },
                          child: Icon(_obcurepassword
                              ? Icons.visibility
                              : Icons.visibility_off),
                        ),
                        errorText:
                            prov.isPassEmpty ? "Password is required" : null,
                        prefixIcon: Icon(Icons.lock, color: Colors.black),
                        filled: true,
                        hintText: 'Enter Your PassWord',
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
                      Expanded(flex: 3, child: Container()),
                      Expanded(
                        flex: 200,
                        child: ElevatedButton(
                          child: Text('Continue'),
                          onPressed: () {
                            if (!prov.isEmailEmpty && !prov.isPassEmpty) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomePage()));
                            }
                            setState(() {
                              prov.setEmailEmpty = prov.tfemail.text.isEmpty;
                              prov.setPassEmpty = prov.tfpass.text.isEmpty;
                            });
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
                      Expanded(flex: 3, child: Container()),
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
                          TextButton(
                              child: Text(
                                'Forget Your Password?',
                                style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const ForgetPassword()));
                              }),
                          TextButton(
                              child: Text(
                                'Click Here',
                                style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(255, 101, 15, 1)),
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const ForgetPassword()));
                              })
                        ],
                      )),
                    ],
                  ),
                )
              ]))
        ],
      ),
      // bottomNavigationBar: MainHomePage(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'MyHallo.dart';
import 'MyLogin.dart';
import 'MyProvider.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
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
              Image.asset('../assets/Password.png'),
              Image.asset('../assets/Bingung.png')
            ]),
            Container(
                width: 500,
                height: 300,
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
                          hintText: 'Enter New Password',
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(),
                            borderRadius: BorderRadius.circular(10),
                          )),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(flex: 3, child: Container()),
                        Expanded(
                          flex: 200,
                          child: ElevatedButton(
                            child: Text('Verify To Email'),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Login()));
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
                                  'Back To Login',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromRGBO(255, 101, 15, 1)),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => const Login()));
                                })
                          ],
                        )),
                      ],
                    ),
                  ),
                ])),
          ],
        ));
  }
}

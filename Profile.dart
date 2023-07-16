import 'package:flutter/material.dart';

import 'MySetting.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    Text('Home Page', style: TextStyle(fontSize: 30)),
    Text('Search Page', style: TextStyle(fontSize: 30)),
    Text('Profile Page', style: TextStyle(fontSize: 30)),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        AppBar(
          backgroundColor: Color.fromARGB(243, 249, 180, 61),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.save_alt_outlined,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Setting()));
              },
            )
          ],
        ),
        Column(
          children: [
            Padding(padding: EdgeInsets.all(3)),
            Image.asset('Profile.png'),
            Image.asset('Profile2.png')
          ],
        ),
        Container(
            width: 500,
            height: 330,
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
            decoration: BoxDecoration(
                color: Color.fromARGB(243, 249, 180, 61),
                borderRadius: BorderRadius.circular(15)),
            child: Column(children: [
              Text('Username',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  )),
              Card(
                margin: EdgeInsets.all(5),
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(15)),
                color: Colors.white,
                shadowColor: Colors.blueGrey,
                elevation: 10,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const ListTile(
                      title: Text(
                        "Yenni Boang Manalu",
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ],
                ),
              ),
              Text('About',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  )),
              Card(
                margin: EdgeInsets.all(5),
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(15)),
                color: Colors.green[50],
                shadowColor: Colors.blueGrey,
                elevation: 10,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const ListTile(
                      title: Text(
                        "Hello Guys",
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ],
                ),
              ),
              Text('Website',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  )),
              Card(
                margin: EdgeInsets.all(5),
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(15)),
                color: Colors.green[50],
                shadowColor: Colors.blueGrey,
                elevation: 10,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const ListTile(
                      title: Text(
                        "https://yennibm/indo.com",
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ],
                ),
              ),
              Text('Email',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  )),
              Card(
                margin: EdgeInsets.all(5),
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(15)),
                color: Colors.green[50],
                shadowColor: Colors.blueGrey,
                elevation: 10,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const ListTile(
                      title: Text(
                        "yenniboangmanalu2003@gmail.com",
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ],
                ),
              ),
            ])),
      ]),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(243, 249, 180, 61),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        // backgroundColor: Colors.amber,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }
}

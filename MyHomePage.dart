import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'MyPhoto1.dart';
import 'MyPhoto2.dart';
import 'MyPhoto3.dart';
import 'MyPhoto4.dart';
import 'MySetting.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(children: [
      AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'Hallo Yenni',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.normal),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.settings,
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
        children: <Widget>[
          Padding(padding: EdgeInsets.all(8)),
          Image.asset('../assets/ForYou.png'),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: SizedBox(
            width: 250,
            height: 230,
            child: Card(
              elevation: 6,
              color: Colors.amber.shade100,
              semanticContainer: true,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Photo1()));
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Photo 1',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Image.asset(
                      'Foto1.png',
                      width: 250,
                      height: 190,
                    ),
                  ],
                ),
              ),
            ),
          )),
          Column(
            children: [
              Center(
                  child: SizedBox(
                width: 250,
                height: 230,
                child: Card(
                  elevation: 1,
                  color: Colors.amber.shade100,
                  semanticContainer: true,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Photo2()));
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Photo 2',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 2),
                        Image.asset(
                          'Foto2.png',
                          width: 250,
                          height: 190,
                        ),
                      ],
                    ),
                  ),
                ),
              ))
            ],
          )
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: SizedBox(
            width: 250,
            height: 230,
            child: Card(
              elevation: 1,
              color: Colors.amber.shade100,
              semanticContainer: true,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Photo3()));
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Photo 3',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Image.asset(
                      'Foto3.png',
                      width: 250,
                      height: 190,
                    ),
                  ],
                ),
              ),
            ),
          )),
          Row(
            children: [
              Center(
                  child: SizedBox(
                width: 250,
                height: 230,
                child: Card(
                  elevation: 1,
                  color: Colors.amber.shade100,
                  semanticContainer: true,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Photo4()));
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Photo 4',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 2),
                        Image.asset(
                          'Foto4.png',
                          width: 250,
                          height: 190,
                        ),
                      ],
                    ),
                  ),
                ),
              ))
            ],
          )
        ],
      )
    ]));

    // bottomNavigationBar: BottomNavigationBar(
    //   backgroundColor: Color.fromARGB(243, 249, 180, 61),
    //   items: [
    //     BottomNavigationBarItem(
    //       icon: Icon(Icons.home),
    //       label: 'Home',
    //     ),
    //     BottomNavigationBarItem(
    //       icon: Icon(
    //         Icons.search,
    //       ),
    //       label: 'Search',
    //     ),
    //     BottomNavigationBarItem(
    //       icon: Icon(Icons.person),
    //       label: 'Profile',
    //     ),
    //   ],
    //   currentIndex: _selectedIndex,
    //   selectedItemColor: Colors.blue,
    //   showUnselectedLabels: true,
    //   unselectedItemColor: Colors.black,
    //   onTap: _onItemTapped,
    // ),
  }
}

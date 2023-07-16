import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  // int _selectedIndex = 0;
  // List<Widget> _widgetOptions = <Widget>[
  //   Text('Home Page', style: TextStyle(fontSize: 30)),
  //   Text('Search Page', style: TextStyle(fontSize: 30)),
  //   Text('Profile Page', style: TextStyle(fontSize: 30)),
  // ];
  // void _onItemTapped(int index) {
  //   setState(() {
  //     _selectedIndex = index;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(20),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Search",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                bottomLeft: Radius.circular(15)),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(243, 249, 180, 61),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(15),
                                  bottomRight: Radius.circular(15)),
                            )),
                        onPressed: () {},
                        child: Icon(Icons.search),
                      ),
                    )
                  ],
                ),
              ),
              Padding(padding: EdgeInsets.all(8)),
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
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Photo 1',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
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
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Photo 2',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
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
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Photo 3',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
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
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Photo 4',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
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
                  ))
                ],
              )
            ],
          )
        ]),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   backgroundColor: Color.fromARGB(243, 249, 180, 61),
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: 'Home',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.search),
      //       label: 'Search',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.person),
      //       label: 'Profile',
      //     ),
      //   ],
      //   // backgroundColor: Colors.amber,
      //   currentIndex: _selectedIndex,
      //   selectedItemColor: Colors.blue,
      //   unselectedItemColor: Colors.black,
      //   onTap: _onItemTapped,
      // ),
    );
  }
}

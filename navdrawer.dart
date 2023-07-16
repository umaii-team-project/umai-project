import 'package:flutter/material.dart';

import 'MyPhoto2.dart';
import 'MyPhoto3.dart';
import 'MyPhoto4.dart';
import 'MySetting.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _drawerHeader(),
          _drawerItem(
              icon: Icons.folder,
              text: 'My Files',
              onTap: () => print('Tap My Files')),
          _drawerItem(
              icon: Icons.group,
              text: 'Shared with me',
              onTap: () => print('Tap Shared menu')),
          _drawerItem(
              icon: Icons.access_time,
              text: 'Recent',
              onTap: () => print('Tap Recent menu')),
          _drawerItem(
              icon: Icons.delete,
              text: 'Trash',
              onTap: () => print('Tap Trash menu')),
          Divider(height: 25, thickness: 1),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 10, bottom: 10),
            child: Text("Labels",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                )),
          ),
          _drawerItem(
              icon: Icons.bookmark,
              text: 'Family',
              onTap: () => print('Tap Family menu')),
        ],
      ),
    );
  }
}

Widget _drawerHeader() {
  return UserAccountsDrawerHeader(
    currentAccountPicture: ClipOval(
      child: Image(
          image: AssetImage('assets/images/orang2.jpeg'), fit: BoxFit.cover),
    ),
    otherAccountsPictures: [
      ClipOval(
        child: Image(
            image: AssetImage('assets/images/orang1.jpg'), fit: BoxFit.cover),
      ),
      ClipOval(
        child: Image(
            image: AssetImage('assets/images/orang3.jpeg'), fit: BoxFit.cover),
      )
    ],
    accountName: Text('Yenni'),
    accountEmail: Text('yenniboangmanalu2003@gmail..com'),
  );
}

Widget _drawerItem(
    {IconData? icon, String? text, required GestureTapCallback onTap}) {
  return ListTile(
    title: Row(
      children: <Widget>[
        Icon(icon),
        Padding(
          padding: EdgeInsets.only(left: 25.0),
          child: Text(
            text!,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    ),
    onTap: onTap,
  );
}

Widget build(BuildContext context) {
  return Scaffold(
    body: SingleChildScrollView(
      child: Column(children: [
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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Photo3()));
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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Photo3()));
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
      ]),
    ),
  );
}

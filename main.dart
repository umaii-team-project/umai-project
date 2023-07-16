import 'package:flutter/material.dart';
import 'package:flutter_application_2/lib/MyHallo.dart';
import 'package:flutter_application_2/lib/MyLogin.dart';

import 'package:provider/provider.dart';

import 'MyHomePage.dart';
import 'MyProfile.dart';
import 'MyProvider.dart';
import 'MySearch.dart';

void main() => runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => MyProviderLogin()),
      ],
      child: const MyApp(),
    ));

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Yenni Project';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: _title,
        debugShowCheckedModeBanner: false,
        theme: new ThemeData(
            scaffoldBackgroundColor: Color.fromARGB(243, 210, 189, 153),
            listTileTheme: ListTileThemeData(
                textColor: Colors.black, iconColor: Colors.white)),
        home: const Hallo());
  }
}

class MainHomePage extends StatefulWidget {
  const MainHomePage({super.key});

  @override
  State<MainHomePage> createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {
  int _selectedIndex = 0;
  final pages = [HomePage(), Search(), MyProfile(), Hallo(), Login()];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    print("test");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(243, 249, 180, 61),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        showUnselectedLabels: true,
        unselectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }
}

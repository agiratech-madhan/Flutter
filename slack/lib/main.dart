import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './MyAccount.dart';
import './DirectMessages.dart';
import './Mentions.dart';
import './Searchpage.dart';
import 'Home.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedindex = 0;
  void Navigationbartap(int index) {
    setState(() {
      _selectedindex = index;
    });
  }

  List<Widget> _Pages = [
    Home(),
    DirectMessages(),
    Mentions(),
    SearchPage(),
    MyAccount(),
  ];

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.pink,
        dividerColor: Colors.transparent,
        // systemOverlayStyle: SystemUiOverlayStyle.light,
        // appBarTheme: systemOverlayStyle:,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // appBar: AppBar(),
        body: _Pages[_selectedindex],

        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            unselectedItemColor: Colors.grey,
            selectedItemColor: Colors.pink,
            currentIndex: _selectedindex,
            selectedFontSize: 12,
            unselectedFontSize: 12,
            onTap: Navigationbartap,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.message_outlined), label: 'DMs'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.alternate_email), label: 'Mentions'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search), label: 'Search'),
              BottomNavigationBarItem(icon: Icon(Icons.face), label: 'You'),
            ]),
      ),
    );
  }
}
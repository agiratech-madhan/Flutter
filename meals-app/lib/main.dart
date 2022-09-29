import 'package:flutter/material.dart';
import 'categories_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Meals',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.lightBlue,
        canvasColor: Color.fromRGBO(255, 254, 228, 1),
        fontFamily: 'Raleway',
        // textTheme: ThemeData.light().textTheme,
        textTheme: ThemeData.light().textTheme.copyWith(
            bodyText1: const TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ), // TextStyle
            bodyText2: const TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ), // TextStyle
            headline6: const TextStyle(
              fontSize: 20,
              fontFamily: ' RobotoCondensed ',
              fontWeight: FontWeight.bold,
            )), // TextStyle
      ),
      home: CategoryScreen(),
    );
  }
}

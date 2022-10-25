import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopapp/screens/cart)screen.dart';
import 'package:shopapp/screens/product_detail_screen.dart';
import 'package:shopapp/screens/products_overview_screens.dart';
import './providers/product_provider.dart';
import 'package:provider/provider.dart';
import 'providers/cart.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Color primaryAccentColor = const Color(0xff002A36);
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => Products(),
        ),
        ChangeNotifierProvider(create: (ctx) => Cart()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          // splashColor: Colors.pink,
          // shadowColor: Colors.pink,
          // primarySwatch: Colors.purple,
          primaryColor: Colors.orange,
          colorScheme: ColorScheme.fromSeed(seedColor: primaryAccentColor),
          textTheme: GoogleFonts.notoSansTextTheme(Theme.of(context).textTheme),
        ),
        home: ProductOverview(),
        routes: {
          ProductDetailScreen.routeName: (context) => ProductDetailScreen(),
          CartScreen.routeName: (context) => CartScreen()
        },
      ),
    );
  }
}

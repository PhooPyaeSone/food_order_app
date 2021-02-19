import 'package:flutter/material.dart';
import 'package:food_order_app/constants.dart';
import 'package:food_order_app/screens/home/home-screen.dart';
import 'package:food_order_app/screens/details/details-screen.dart';
import 'package:food_order_app/screens/menu/components/menu.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
        textTheme: TextTheme(
          bodyText2: TextStyle(color: kSecondaryColor,fontSize: 18),
          bodyText1: TextStyle(color: kSecondaryColor,fontSize: 18),
        ),
      ),
      home: HomeScreen(),
      initialRoute: HomeScreen.id ,
      routes: {
        DetailsScreen.id : (context) => DetailsScreen(),
        Menu.id :(context) =>Menu(),
      },
    );
  }
}


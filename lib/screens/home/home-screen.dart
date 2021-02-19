import 'package:flutter/material.dart';
import 'package:food_order_app/screens/home/components/app_bar.dart';
import 'package:food_order_app/screens/home/components/body.dart';
import 'package:food_order_app/components/bottom_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  static const String id = 'home_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: homeAppBar(context),
      bottomNavigationBar: BottomNavBar(),
      body: Body(),
    );
  }
}


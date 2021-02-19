import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_order_app/screens/details/components/app_bar.dart';
import 'package:food_order_app/screens/details/components/body.dart';
import 'package:food_order_app/screens/details/components/order_button.dart';

class DetailsScreen extends StatelessWidget {
  static const String id = "detail_screen";

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: detailsAppBar(context),
      body: Body(),
    );
  }
}


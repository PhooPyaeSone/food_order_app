import 'package:flutter/material.dart';
import 'package:food_order_app/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

AppBar homeAppBar (BuildContext context){

  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    leading: IconButton(
      icon: SvgPicture.asset("assets/icons/menu.svg"),
      onPressed: () {},
    ),
    title: Center(
      child: RichText(
        text: TextSpan(
          style: Theme.of(context).textTheme.headline6.copyWith(
            fontWeight: FontWeight.bold,
            fontSize: 25
          ),
          children: [
            TextSpan(
                text: 'Street', style: TextStyle(color: kSecondaryColor)),
            TextSpan(
              text: 'Food',
              style: TextStyle(color: kPrimaryColor),
            ),
          ],
        ),
      ),
    ),
    actions: [
      IconButton(
        icon: SvgPicture.asset('assets/icons/notification.svg'),
        onPressed: () {},
      ),
    ],
  );
}
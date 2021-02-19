import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

AppBar detailsAppBar(context) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    leading: IconButton(
      icon: Icon(
        Icons.arrow_back,
        color: Colors.black45,
      ),
      onPressed: () {
        Navigator.pop(context);
      },
    ),
    actions: [
      IconButton(
        icon: SvgPicture.asset(
          'assets/icons/share.svg',
          color: Colors.black45,
        ),
        onPressed: () {},
      ),
      IconButton(
        icon: SvgPicture.asset(
          'assets/icons/more.svg',
          color: Colors.black45,
        ),
        onPressed: () {},
      )
    ],
  );
}


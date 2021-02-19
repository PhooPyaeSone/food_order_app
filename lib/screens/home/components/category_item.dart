import 'package:flutter/material.dart';
import 'package:food_order_app/constants.dart';

// ignore: must_be_immutable
class CategoryItem extends StatelessWidget {
  final String title;
  bool isActive = false;
  final Function onTap;
  CategoryItem({@required this.title,@required this.isActive,@required this.onTap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 35,vertical: 10),
            child: Text(
              title,
              style: isActive
                  ? TextStyle(
                color: kTextColor,
                fontWeight: FontWeight.bold,
              )
                  : TextStyle(fontSize: 18),
            ),
          ),
          if (isActive)
            Container(
              height: 3,
              width: 40,
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
        ],
      ),
    );
  }
}

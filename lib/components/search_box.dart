import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_order_app/constants.dart';

class SearchBox extends StatelessWidget {

  final ValueChanged<String> onChanged;
  SearchBox({@required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.symmetric(horizontal: 25,vertical: 5),
      decoration: BoxDecoration(
        border: Border.all(
          color: kSecondaryColor.withOpacity(0.32),
        ),
        borderRadius: BorderRadius.circular(50),
      ),
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
            border: InputBorder.none,
            icon: SvgPicture.asset('assets/icons/search.svg'),
            hintText: 'Search Here',
            hintStyle: TextStyle(color: kSecondaryColor)
        ),
      ),
    );
  }
}

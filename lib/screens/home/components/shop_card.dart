import 'package:flutter/material.dart';
import 'package:food_order_app/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ShopCard extends StatelessWidget {
  ShopCard(
      {@required this.title,
        @required this.shop,
        @required this.svgSrc,
        @required this.onTap});
  final String title, shop, svgSrc;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(left: 20, top: 20, right: 15, bottom: 20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 4),
              blurRadius: 20,
              color: Color(0xFFB0CCE1).withOpacity(0.32),
            ),
          ]),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 15),
                  padding: EdgeInsets.all(25),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: kPrimaryColor.withOpacity(.15),
                  ),
                  child: SvgPicture.asset(
                    svgSrc,
                    width: size.width * 0.18,
                  ),
                ),
                Text(title),
                SizedBox(
                  height: 10,
                ),
                Text(
                  shop,
                  style: TextStyle(fontSize: 12),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

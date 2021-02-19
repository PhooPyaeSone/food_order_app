import 'package:flutter/material.dart';
import 'package:food_order_app/components/search_box.dart';
import 'package:food_order_app/screens/home/components/Category_list.dart';
import 'package:food_order_app/screens/home/components/shop_list.dart';
import 'package:food_order_app/screens/home/components/discount_card.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          SearchBox(
            onChanged: (value) {},
          ),
          CategoryList(),
          ShopList(),
          DiscountCard()
        ],
      ),
    );
  }
}


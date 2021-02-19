import 'package:flutter/material.dart';
import 'package:food_order_app/screens/details/details-screen.dart';
import 'package:food_order_app/screens/home/components/shop_card.dart';
import 'package:food_order_app/screens/menu/components/menu.dart';

class ShopList extends StatelessWidget {
  const ShopList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ShopCard(
            title: 'Burger & Beer',
            shop: 'KFC',
            svgSrc: 'assets/icons/burger_beer.svg',
            onTap: () {
              Navigator.pushNamed(context, Menu.id);
            },
          ),
          ShopCard(
            title: 'Chinese Noodles',
            shop: 'Ya Kaung',
            svgSrc: 'assets/icons/burger_beer.svg',
            onTap: () {
              Navigator.pushNamed(context, DetailsScreen.id);
            },
          ),
          ShopCard(
            title: 'Burger & Beer',
            shop: 'Lotteria',
            svgSrc: 'assets/icons/burger_beer.svg',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}


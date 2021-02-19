import 'package:flutter/material.dart';
import 'package:food_order_app/screens/home/components/category_item.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CategoryItem(
          title: 'Delivery',
          isActive: true,
          onTap: (){
          },
        ),
        CategoryItem(
          title: 'Pick up',
          isActive: false,
          onTap: (){
          },
        ),
        CategoryItem(
          title: 'Restaurants',
          isActive: false,
          onTap: (){},
        ),
      ],
    );
  }
}


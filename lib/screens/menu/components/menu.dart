import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_order_app/constants.dart';
import 'package:food_order_app/screens/details/details-screen.dart';

class Menu extends StatelessWidget {
  static const String id = "menu";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Row(
          children: [
            Expanded(
              child: ShopMenu(),
            )
          ],
        ),
      ),
    );
  }
}

class ShopMenu extends StatefulWidget {
  @override
  _ShopMenuState createState() => _ShopMenuState();
}

class _ShopMenuState extends State<ShopMenu> with TickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 5);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 70),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Good Morning,Brang!',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 19,
                  ),
                ),
                SvgPicture.asset('assets/icons/person.svg')
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: SizedBox(
              child: TabBar(
                isScrollable: true,
                unselectedLabelColor: Colors.black,
                labelColor: Colors.black,
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: kPrimaryColor.withOpacity(0.5),
                ),
                controller: _tabController,
                tabs: [
                  ShopMenuName(icon: 'assets/icons/healthy-eating.svg',name: 'Foods',),
                  ShopMenuName(icon: 'assets/icons/ramen.svg',name: 'Ramen',),
                  ShopMenuName(icon: 'assets/icons/drink.svg',name: 'Drinks',),
                  ShopMenuName(icon: 'assets/icons/cake.svg',name: 'Desserts',),
                  ShopMenuName(icon: 'assets/icons/ramen.svg',name: 'Salad',),
                ],
              ),
            ),
          ),
          Expanded(
              child: TabBarView(
            controller: _tabController,
            children: [
              MenuCard(
                text: 'Hello',
              ),
              MenuCard(
                text: 'Hi',
              ),
              MenuCard(
                text: 'Hi2',
              ),
              MenuCard(
                text: 'Hi3',
              ),
              MenuCard(
                text: 'Hi4',
              ),
            ],
          ))
        ],
      ),
    );
  }
}

class ShopMenuName extends StatelessWidget {
  final String icon,name;
  const ShopMenuName({
    Key key, this.icon, this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Tab(
        child: Row(
          children: [
            SvgPicture.asset(
              icon,
              width: 20,
              height: 20,
            ),
            SizedBox(
              width: 10,
            ),
            Text(name, style: kFoodMenuStyle),
          ],
        ),
      ),
    );
  }
}

class MenuCard extends StatelessWidget {
  MenuCard({this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView(
      children: [
        MenuCardItem(itemPhoto: 'assets/images/noodle.png',itemName:  'Shan Noodles',shopName: 'Ya Kaung',rate:4.5,price: 1200,onTap: (){Navigator.pushNamed(context,DetailsScreen.id);},),
        MenuCardItem(itemPhoto: 'assets/images/sprite.jpg',itemName:  'Sprite',shopName: 'Ya Kaung',rate:5.0,price: 700,onTap: (){Navigator.pushNamed(context,DetailsScreen.id);},),
        MenuCardItem(itemPhoto: 'assets/images/burger1.jpg',itemName:  'Burger',shopName: 'Ya Kaung',rate:4.0,price: 2500,onTap: (){Navigator.pushNamed(context,DetailsScreen.id);},),
        MenuCardItem(itemPhoto: 'assets/images/cake.jpeg',itemName:  'Cake',shopName: 'Ya Kaung',rate:3.5,price: 3000,onTap: (){Navigator.pushNamed(context,DetailsScreen.id);},),
        Text(text),
      ],
    ));
  }
}

class MenuCardItem extends StatelessWidget {
  MenuCardItem({this.itemPhoto,this.itemName,this.shopName,this.rate,this.price, this.onTap});
  final String itemPhoto,itemName,shopName;
  final int price;
  final double rate;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.all(17),
      width: double.infinity,
      height: 170,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
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
          child: Row(
            children: [
              Image.asset(
                itemPhoto,
                width: size.width * 0.5,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(rate.toString()),
                      SizedBox(
                        width: 1,
                      ),
                      SvgPicture.asset(
                        'assets/icons/star.svg',
                        height: 30,
                        width: 30,
                      ),
                      SizedBox(
                        width: 65,
                      ),
                      IconButton(
                          icon: SvgPicture.asset(
                            'assets/icons/love.svg',
                            height: 25,
                            width: 25,
                          ),
                          onPressed: () {})
                    ],
                  ),
                  Text(
                   itemName,
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    shopName,
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        '$price MMK',
                        style: Theme.of(context).textTheme.bodyText2.copyWith(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 35,
                      ),
                      Material(
                        type: MaterialType
                            .transparency, //Makes it usable on any background color, thanks @IanSmith
                        child: Ink(
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xFFf26b6b), width: 4.0),
                            color: Color(0xFFf26b6b),
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: InkWell(
                            //This keeps the splash effect within the circle
                            onTap: () {},
                            child: Icon(
                              Icons.add,
                              size: 27.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

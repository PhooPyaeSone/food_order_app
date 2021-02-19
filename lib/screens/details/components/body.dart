import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_order_app/constants.dart';
import 'package:food_order_app/screens/details/components/item_image.dart';
import 'package:food_order_app/screens/details/components/order_button.dart';
import 'package:food_order_app/screens/details/components/title_price_rating.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ItemImage(
          svgImage: 'assets/images/burger1.jpg',
        ),
        ItemInfo()
      ],
    );
  }
}

enum SingingCharacter { Small, Large }

class ItemInfo extends StatefulWidget {
  @override
  _ItemInfoState createState() => _ItemInfoState();
}

class _ItemInfoState extends State<ItemInfo> {
  int _n = 0;
  void add() {
    setState(() {
      _n++;
    });
  }
  void minus() {
    setState(() {
      if (_n != 0)
        _n--;
    });
  }
  SingingCharacter _character = SingingCharacter.Small;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Expanded(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding: EdgeInsets.all(20),
          width: double.infinity,
          decoration: BoxDecoration(
              color: kPrimaryColor.withOpacity(.15),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              )),
          child: Column(
            children: [
              shopName('KFC'),
              TitlePriceRating(
                name: 'Cheese Burger',
                numOfReviews: 24,
                rating: 4,
                price: 15,
                onRatingChanged: (value) {},
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Variation',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1
                        .copyWith(color: Colors.black54),
                  ),
                ],
              ),
              ListTile(
                leading: Image.asset(
                  'assets/images/size.png',
                  width: 28,
                  height: 28,
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text('Small'), Text('200MMK')],
                ),
                trailing: Radio(
                  activeColor: Color(0xFFf26b6b),
                  focusColor: Color(0xFFf26b6b),
                  materialTapTargetSize: MaterialTapTargetSize.padded,
                  value: SingingCharacter.Small,
                  groupValue: _character,
                  onChanged: (SingingCharacter value) {
                    setState(() {
                      _character = value;
                      print(_character);
                    });
                  },
                ),
              ),
              ListTile(
                leading: Image.asset(
                  'assets/images/size.png',
                  width: 28,
                  height: 28,
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text('Large'), Text('200MMk')],
                ),
                trailing: Radio(
                  activeColor: Color(0xFFf26b6b),
                  focusColor: Color(0xFFf26b6b),
                  value: SingingCharacter.Large,
                  groupValue: _character,
                  onChanged: (SingingCharacter value) {
                    setState(() {
                      _character = value;
                      print(_character);
                    });
                  },
                ),
              ),
//              Row(
//                mainAxisAlignment: MainAxisAlignment.end,
//                children: <Widget>[
//                  Container(
//                    width: 40,height: 40,
//                    child: FloatingActionButton(
//                      heroTag: 'add',
//                      onPressed: add,
//                      shape: RoundedRectangleBorder(
//                        borderRadius: BorderRadius.all(Radius.circular(16.0)),
//                      ),
//                      child: Icon(Icons.add, color: Colors.black,),
//                      backgroundColor: Colors.white,),
//                  ),
//                  SizedBox(width: 30,),
//                  Text('$_n',
//                      style: new TextStyle(fontSize: 30.0)),
//                  SizedBox(width: 30,),
//                  Container(
//                    width: 40,height: 40,
//                    child: FloatingActionButton(
//                      heroTag: 'minus',
//                      onPressed: minus,
//                      child: Icon(
//                        const IconData(0xe15b, fontFamily: 'MaterialIcons'),
//                        color: Colors.black,size: 20,),
//                      backgroundColor: Colors.white,),
//                  ),
//                ],
//              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Enter Instructions'),
                  ],
                ),
              ),
              TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: 'Eg.Give Spoon')),
              SizedBox(height: 10),
              OrderButton(
                size: size,
                press: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Row shopName(String name) {
  return Row(
    children: [
      Icon(
        Icons.location_on,
        color: kSecondaryColor,
      ),
      SizedBox(
        width: 10,
      ),
      Text(name)
    ],
  );
}

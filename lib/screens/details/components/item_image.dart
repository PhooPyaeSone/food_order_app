import 'package:flutter/material.dart';

class ItemImage extends StatelessWidget {
  ItemImage({@required this.svgImage});
  final String svgImage;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Image.asset(svgImage,height: size.height*0.30,
      width: double.infinity,
      fit: BoxFit.fill,
    );
  }
}
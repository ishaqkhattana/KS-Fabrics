import 'package:flutter/material.dart';
import '../../../../size_config.dart';
import 'category_card.dart';
import 'discount_card.dart';
import 'home_screen_header.dart';
import 'popular_products.dart';
import 'special_offers.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: Column(children: [
        SizedBox(
          height: getProportionateScreenWidth(5),
        ),
        HomeScreenHeader(),
        SizedBox(
          height: getProportionateScreenWidth(10),
        ),
        DiscountCard(),
        SizedBox(
          height: getProportionateScreenWidth(10),
        ),
        Categories(),
        SizedBox(
          height: getProportionateScreenWidth(10),
        ),
        SpecialOffers(),
        SizedBox(
          height: getProportionateScreenWidth(10),
        ),
        PopularProducts(),
      ]),
    ));
  }
}

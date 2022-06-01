import 'package:flutter/material.dart';
import 'package:ks_fabrics/screens/details/details_screen.dart';
import '../../../../models/Product.dart';
import '../../../../size_config.dart';
import '../../components/product_card.dart';
import 'section_title.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Section(text: "Popular Product", press: () {}),
        SizedBox(
          height: getProportionateScreenWidth(10),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                demoProducts.length,
                (index) => ProductCard(
                  product: demoProducts[index],
                  press: () => Navigator.pushNamed(
                      context, DetailsScreen.routeName,
                      arguments: ProductDetailsArguments(
                          product: demoProducts[index])),
                ),
              ),
              SizedBox(
                height: getProportionateScreenWidth(10),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

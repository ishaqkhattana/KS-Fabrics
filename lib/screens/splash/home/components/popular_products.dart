import 'package:flutter/material.dart';
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

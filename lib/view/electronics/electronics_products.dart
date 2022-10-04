import 'package:flutter/material.dart';
import 'package:shop_now/utls/section_title.dart';
import 'package:shop_now/utls/size_config.dart';
import 'package:shop_now/view/electronics/electronics_card.dart';
import 'package:shop_now/view/electronics/eproducts.dart';

class Electroniocs extends StatelessWidget {
  const Electroniocs ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SectionTitle(title: "Electronics", press: () {}),
        ),
        SizedBox(height: getProportionateScreenWidth(20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                demoProducts.length,
                (index) {
                  if (demoProducts[index].isPopular) {
                    return ElectronicsCard (product: demoProducts[index]);
                  }

                  return const SizedBox
                      .shrink(); // here by default width and height is 0
                },
              ),
              SizedBox(width: getProportionateScreenWidth(20)),
            ],
          ),
        )
      ],
    );
  }
}

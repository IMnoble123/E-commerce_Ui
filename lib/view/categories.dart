
import 'package:flutter/material.dart';
import 'package:shop_now/utls/size_config.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {"image": "assets/offers.jpg", "text": "Offers"},
      {"image": "assets/electronics.jpg", "text": "Electronics"},
       {"image": "assets/mens wear.jpg", "text": "Men's"},
      {"image": "assets/womens.jpg", "text": "Women's"},
      {"image": "assets/kidsweare.jpg", "text": "Kids"},
      {"image": "assets/bills.jpg", "text": "Bills"},
    ];
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.all(getProportionateScreenWidth(20)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(
            categories.length,
            (index) => CategoryCard(
              image: categories[index]["image"],
              text: categories[index]["text"],
              press: () {},
            ),
          ),
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String? image, text;
  final GestureTapCallback press;
  const CategoryCard({Key? key, this.image, this.text, required this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        width: getProportionateScreenWidth(55),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(getProportionateScreenWidth(20)),
              height: getProportionateScreenWidth(55),
              width: getProportionateScreenWidth(55),
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(image!),fit: BoxFit.cover),
                color: const Color(0xFFFFECDF),
                borderRadius: BorderRadius.circular(25),
              ),
           
            ),
          const   SizedBox(height: 5),
            Text(text!, textAlign: TextAlign.center,style: const TextStyle(fontSize: 9),)
          ],
        ),
      ),
    );
  }
}

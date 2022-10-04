import 'package:flutter/material.dart';
import 'package:shop_now/utls/header.dart';
import 'package:shop_now/utls/new_arrivals.dart';
import 'package:shop_now/utls/shop_now.dart';
import 'package:shop_now/utls/size_config.dart';
import 'package:shop_now/view/bestsellers/bests_sell.dart';
import 'package:shop_now/view/categories.dart';
import 'package:shop_now/view/electronics/electronics_products.dart';
import 'package:shop_now/view/homeappliens/home_applients.dart';
import 'package:shop_now/view/mostpopular/mostpopular.dart';
import 'package:shop_now/view/popular_page.dart';
import 'package:shop_now/view/sider_page.dart';

class ScreenPage extends StatelessWidget {
  const ScreenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
        child: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          const HomeHeader(),
          SizedBox(
            height: getProportionateScreenHeight(10),
          ),
          const SlideShow(),
          SizedBox(
            height: getProportionateScreenHeight(10),
          ),
          const Text(
            'Categories',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: getProportionateScreenHeight(10),
          ),
          const Categories(),
            SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          const PopularProducts(),
            SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          const Electroniocs(),
           SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          const UpComming(),
          SizedBox(
            height: getProportionateScreenHeight(10),
          ),
          const UpComming(),
          SizedBox(
            height: getProportionateScreenHeight(10),
          ),
          const UpComming(),
           SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          const BestSellers(),
           SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          const HomeAppliances(),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          const BannerPage(),
           SizedBox(
            height: getProportionateScreenHeight(10),
          ),
          const UpComming(),
          SizedBox(
            height: getProportionateScreenHeight(10),
          ),
            const UpComming(),
            SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          const MostPopular(),







        ],
      ),
    ));
  }
}

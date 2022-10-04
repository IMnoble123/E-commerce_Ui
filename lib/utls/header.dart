import 'package:flutter/material.dart';
import 'package:shop_now/utls/size_config.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Row(
        children: [
          const SizedBox(
            width: 20,
          ),
          SizedBox(
            width: SizeConfig.screenWidth * 0.2,
            child: Image.asset('assets/dikazo.png'),
          ),

          const Spacer(),
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          const SizedBox(
            width: 20,
          )
          // SizedBox(height: getProportionateScreenHeight(8),),

          // Container(
          //   width: SizeConfig.screenWidth * 0.6,
          //   decoration: BoxDecoration(
          //     color: kSecondaryColor.withOpacity(0.1),
          //     borderRadius: BorderRadius.circular(15),
          //   ),
          //   child: TextField(
          //     onChanged: (value) => print(value),
          //     decoration: InputDecoration(
          //         contentPadding: EdgeInsets.symmetric(
          //             horizontal: getProportionateScreenWidth(20),
          //             vertical: getProportionateScreenWidth(9)),
          //         border: InputBorder.none,
          //         focusedBorder: InputBorder.none,
          //         enabledBorder: InputBorder.none,
          //         hintText: "Search product",
          //         prefixIcon: const Icon(Icons.search)),
          //   ),
          // ),
        ],
      ),
    );
  }
}

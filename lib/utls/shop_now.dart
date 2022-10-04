import 'package:flutter/material.dart';
import 'package:shop_now/utls/size_config.dart';

class BannerPage extends StatelessWidget {
  const BannerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/oliga.jpg'), fit: BoxFit.cover),
        color: Colors.white,
      ),
      child: Stack(
        children: [
          const Positioned(
            left: 10,
            top: 65,
            child: Text(
              "50%",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(top: 30, left: 10),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text.rich(
                    TextSpan(
                      style: const TextStyle(color: Colors.white),
                      children: [
                        TextSpan(
                          text: "Summer Offer/ ",
                          style: TextStyle(
                            fontSize: getProportionateScreenWidth(18),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const TextSpan(text: "Summer Sale")
                      ],
                    ),
                  ),
                  const SizedBox(height: 5),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
                padding: const EdgeInsets.fromLTRB(20, 10, 15, 10),
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    "shop now > ",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                )),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class SlideShow extends StatelessWidget {
  const SlideShow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ImageSlideshow(
        width: double.infinity,
        height: 200,
        initialPage: 0,
        indicatorColor: Colors.white,
        indicatorBackgroundColor: Colors.grey,
        onPageChanged: (value) {},
        autoPlayInterval: 5000,
        isLoop: true,
        children: [
          Image.asset('assets/oliva1.png', fit: BoxFit.cover),
          Image.asset('assets/gif.gif', fit: BoxFit.cover),
          Image.asset('assets/imagedress1.jpg',fit: BoxFit.cover),
          Image.asset('assets/imagedress3.jpg',fit: BoxFit.cover),
        ]);
  }
}
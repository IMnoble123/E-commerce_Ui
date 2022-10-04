import 'package:flutter/material.dart';

class EProduct {
  final int id;
  final String title, description;
  final List<String> images;
  final List<Color> colors;
  final double rating, price;
  final bool isFavourite, isPopular;

  EProduct({
    required this.id,
    required this.images,
    required this.colors,
    this.rating = 0.0,
    this.isFavourite = false,
    this.isPopular = false,
    required this.title,
    required this.price,
    required this.description,
  });
}


List<EProduct> demoProducts = [
  EProduct(
    id: 1,
    images: [
     "assets/eproduct1.jpg"
    ],
    colors: [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
      const Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Mini Dress",
    price: 1200,
    description: description,
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  EProduct(
    id: 2,
    images: [
      "assets/Eproduct2.jpg",
    ],
    colors: [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
      const Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Bodycon Dress",
    price: 1200,
    description: description,
    rating: 4.1,
    isPopular: true,
  ),
  EProduct(
    id: 3,
    images: [
      "assets/eproducts3.jpg",
    ],
    colors: [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
      const Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Shift Dress",
    price: 1200,
    description: description,
    rating: 4.1,
    isFavourite: true,
    isPopular: true,
  ),
  EProduct(
    id: 4,
    images: [
      "assets/midydress.jpg",
    ],
    colors: [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
      const Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Midi Dress",
    price: 1200,
    description: description,
    rating: 4.1,
    isFavourite: true,
  ),
];
const String description =
    "A dress (also known as a frock or a gown) is a garment traditionally worn by women or girls consisting of a skirt with an attached bodice (or a matching bodice giving the effect of a one-piece garment).";
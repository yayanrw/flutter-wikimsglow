import 'package:flutter/material.dart';

class Product {
  final String image, title;
  final Color bgColor;

  Product({
    required this.image,
    required this.title,
    this.bgColor = const Color(0xFFEFEFF2),
  });
}

List<Product> demoNewArrivals = [
  Product(
    image: "assets/images/Terra.jpg",
    title: "Terra Natural Deodorant",
    bgColor: const Color(0xFFFEFBF9),
  ),
  Product(
    image: "assets/images/Silva.jpg",
    title: "Silva Natural Deodorant",
  ),
  Product(
    image: "assets/images/Noctis.jpg",
    title: "Noctis Natural Deodorant",
    bgColor: const Color(0xFFF8FEFB),
  ),
];

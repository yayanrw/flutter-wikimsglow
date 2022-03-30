import 'package:flutter/material.dart';

class Product {
  final String image, title;

  Product({
    required this.image,
    required this.title,
  });
}

List<Product> demoNewArrivals = [
  Product(
    image: "assets/images/Terra.jpg",
    title: "Terra Natural Deodorant",
  ),
  Product(
    image: "assets/images/Silva.jpg",
    title: "Silva Natural Deodorant",
  ),
  Product(
    image: "assets/images/Noctis.jpg",
    title: "Noctis Natural Deodorant",
  ),
];

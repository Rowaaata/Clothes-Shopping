import 'package:flutter/material.dart';

class Product {
  final String image, title;
  final int price;
  final Color bgColor;

  Product({
    required this.image,
    required this.title,
    required this.price,
    this.bgColor = const Color(0xFFEFEFF2),
  });
}

List<Product> AllProduct = [
  Product(
    image: "Images/image1.png",
    title: "Long Sleeve Shirts",
    price: 250,
    bgColor: const Color(0xFFFEFBF9),
  ),
  Product(
    image: "Images/image2.png",
    title: "Casual nolin",
    price: 150,
  ),
  Product(
    image: "Images/image3.png",
    title: "shirts",
    price: 200,
    bgColor: const Color(0xFFF8FEFB),
  ),
  Product(
    image: "Images/image4.png",
    title: "Cotton shirt",
    price: 450,
    bgColor: const Color(0xFFEEEEED),
  ),
];



List<Product> popularProducts = [
  Product(
    image: "Images/image2.png",
    title: "Casual nolin",
    price: 150,
  ),
  // Product(
  //   image: "Images/image1.png",
  //   title: "Long Sleeve Shirts",
  //   price: 250,
  //   bgColor: const Color(0xFFFEFBF9),
  // ),
  Product(
    image: "Images/image3.png",
    title: "shirts",
    price: 200,
    bgColor: const Color(0xFFF8FEFB),
  ),
  Product(
    image: "Images/image3.png",
    title: "shirts",
    price: 200,
    bgColor: const Color(0xFFF8FEFB),
  ),
  Product(
    image: "Images/image4.png",
    title: "Cotton shirt",
    price: 450,
    bgColor: const Color(0xFFEEEEED),
  ),
];
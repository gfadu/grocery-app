import 'package:flutter/material.dart';
import '../data/database_helper.dart';

class Product {
  final String image, title, description;
  final int price, id;
  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
  });
}

// List<Product> products = [
//   Product(
//     id: 1,
//     title: "Apple",
//     price: 234,
//     description: dummyText,
//     image: "assets/apple.png",
//   ),
//   Product(
//     id: 2,
//     title: "Corn",
//     price: 234,
//     description: dummyText,
//     image: "assets/corn.png",
//   ),
//   Product(
//     id: 3,
//     title: "Cauliflower",
//     price: 234,
//     description: dummyText,
//     image: "assets/cauliflower.png",
//   ),
//   Product(
//     id: 4,
//     title: "eggplant",
//     price: 234,
//     description: dummyText,
//     image: "assets/eggplant.png",
//   ),
//   Product(
//     id: 5,
//     title: "ginger",
//     price: 234,
//     description: dummyText,
//     image: "assets/ginger.png",
//   ),
//   Product(
//     id: 6,
//     title: "coriander",
//     price: 234,
//     description: dummyText,
//     image: "assets/coriander.png",
//   ),
// ];

// String dummyText =
//     "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";

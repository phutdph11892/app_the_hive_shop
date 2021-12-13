import 'package:flutter/material.dart';

class Product {
  final String image,
      title,
      description; // ? gimp các thám số có thể có gía trị null
  final int? price, size, id;
  final Color color;

  //ham tao constructor
  Product(
      {this.id,
      this.image ="",
      this.title ="",
      this.description="",
      this.price,
      this.size,
    required  this.color});
}

List<Product> products = [
  Product(
      id: 1,
      image: "assets/images/bag_1.png",
      title: "Office Code",
      price: 123,
      size: 12,
      description: dummyText,
      color:const Color(0xFF3D82AE)),
  Product(
      id: 2,
      image: "assets/images/bag_2.png",
      title: "Belt Bag",
      price: 234,
      size: 10,
      description: dummyText,
      color:const Color(0xFFD3A984)),
  Product(
      id: 3,
      image: "assets/images/bag_1.png",
      title: "Hag top",
      price: 320,
      size: 10,
      description: dummyText,
      color: const Color(0xFF989493)),
  Product(
      id: 4,
      image: "assets/images/bag_1.png",
      title: "Old Fashion",
      price: 223,
      size: 11,
      description: dummyText,
      color:const Color(0xFFE6B398)),
  Product(
      id: 5,
      image: "assets/images/bag_1.png",
      title: "Office Code",
      price: 123,
      size: 12,
      description: dummyText,
      color:const Color(0xFFFB7883)),
  Product(
      id: 6,
      image: "assets/images/bag_1.png",
      title: "Office Code",
      price: 123,
      size: 12,
      description: dummyText,
      color:const Color(0xFFAEAEAE)),
  Product(
      id: 7,
      image: "assets/images/bag_1.png",
      title: "Hag top",
      price: 320,
      size: 10,
      description: dummyText,
      color: const Color(0xFF989493)),
  Product(
      id: 8,
      image: "assets/images/bag_1.png",
      title: "Old Fashion",
      price: 223,
      size: 11,
      description: dummyText,
      color:const Color(0xFFE6B398)),
  Product(
      id: 9,
      image: "assets/images/bag_1.png",
      title: "Office Code",
      price: 123,
      size: 12,
      description: dummyText,
      color:const Color(0xFFFB7883)),
  Product(
      id: 10,
      image: "assets/images/bag_1.png",
      title: "Office Code",
      price: 123,
      size: 12,
      description: dummyText,
      color:const Color(0xFFAEAEAE)),
];
String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";

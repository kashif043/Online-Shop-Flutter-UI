import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;
  Product({
    this.id,
    this.image,
    this.title,
    this.price,
    this.description,
    this.size,
    this.color,
  });
}

List<Product> products = [
  Product(
    id: 1,
    image: 'assets/images/bag_1.png',
    title: 'Office Bag',
    description: dummyText,
    price: 234,
    size: 12,
    color: Color(0xFF5672326),
  ),
  Product(
    id: 2,
    image: 'assets/images/bag_2.png',
    title: 'Belt Bag',
    description: dummyText,
    price: 236,
    size: 10,
    color: Color(0xFF7e7d7c),
  ),
  Product(
    id: 3,
    image: 'assets/images/bag_3.png',
    title: 'Party Bag',
    description: dummyText,
    price: 238,
    size: 14,
    color: Color(0xFFd9b18e),
  ),
  Product(
    id: 4,
    image: 'assets/images/bag_4.png',
    title: 'Ladies Bag',
    description: dummyText,
    price: 240,
    size: 10,
    color: Color(0xFFcc6467),
  ),
  Product(
    id: 5,
    image: 'assets/images/bag_5.png',
    title: 'Womens Bag',
    description: dummyText,
    price: 232,
    size: 8,
    color: Color(0xFFf8c1a4),
  ),
  Product(
    id: 6,
    image: 'assets/images/bag_6.png',
    title: 'Office Bag',
    description: dummyText,
    price: 242,
    size: 10,
    color: Color(0xFF6baabc),
  ),
  Product(
    id: 7,
    image: 'assets/images/bag_7.png',
    title: 'Party Bag',
    description: dummyText,
    price: 238,
    size: 14,
    color: Color(0xFFe4cbb4),
  ),
  Product(
    id: 8,
    image: 'assets/images/bag_8.png',
    title: 'School Bag',
    description: dummyText,
    price: 242,
    size: 14,
    color: Color(0xFFf15d5d),
  ),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";

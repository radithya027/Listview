import 'package:flutter/material.dart';




class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;
  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.size,
    required this.color,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "Office Code",
      price: 234,
      size: 12,
      description: "TRANSFORMERS RISE OF THE BEASTS",
      image: "flutter_application_1/assets/download (1).jpeg",
      color: Color(0xFF3D82AE)),
  Product(
      id: 2,
      title: "Belt Bag",
      price: 234,
      size: 8,
      description: "Fast X",
      image: "flutter_application_1/assets/[VER-HD] Rápidos Y Furiosos 10 descargar pelicula Completa EN vivo.jpeg",
      color: Color(0xFFD3A984)),
  Product(
      id: 3,
      title: "Hang Top",
      price: 234,
      size: 10,
      description: "Spider-Man: No Way Home",
      image: "flutter_application_1/assets/Spider-Man_ No Way Home.jpeg",
      color: Color(0xFF989493)),
  Product(
      id: 4,
      title: "Old Fashion",
      price: 234,
      size: 11,
      description: "Avengers END GAME",
      image: "flutter_application_1/assets/download (2).jpeg",
      color: Color(0xFFE6B398)),
  Product(
      id: 5,
      title: "Office Code",
      price: 234,
      size: 12,
      description: "NARUTO",
      image: "flutter_application_1/assets/download (3).jpeg",
      color: Color(0xFFFB7883)),
  Product(
    id: 6,
    title: "Office Code",
    price: 234,
    size: 12,
    description: "John Wick: Chapter 2",
    image: "flutter_application_1/assets/John Wick_ Chapter 2 (2017).jpeg",
    color: Color(0xFFAEAEAE),
  ),
    Product(
    id: 6,
    title: "Office Code",
    price: 234,
    size: 12,
    description: "Top Gun: Maverick",
    image: "flutter_application_1/assets/Top Gun_ Maverick (2022).jpeg",
    color: Color(0xFFAEAEAE),
  ),
    Product(
    id: 6,
    title: "Office Code",
    price: 234,
    size: 12,
    description: "The Greatest Showman",
    image: "flutter_application_1/assets/download (5).jpeg",
    color: Color(0xFFAEAEAE),
  ),
];
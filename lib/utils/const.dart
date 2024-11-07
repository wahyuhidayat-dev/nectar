import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nectar/model/product.dart';

const greenColor = Color(0xFF53B175);
const whiteColor = Color(0xFFFFFFFF);
const blackColor = Color(0xFF030303);
const greyColor = Color(0xFF7C7C7C);
const yellowGradColor = Color(0xFFF8A44C);
const orangeGradColor = Color(0xFFF7A593);
const purpleGradColor = Color(0xFFD3B0E0);
const blueGradColor = Color(0xFFB7DFF5);
const backgroundColor = Color(0xFFF2F3F2);

TextStyle fontRegular =
    GoogleFonts.ibmPlexSans().copyWith(fontWeight: FontWeight.w400);
TextStyle fontMedium =
    GoogleFonts.ibmPlexSans().copyWith(fontWeight: FontWeight.w500);
TextStyle fontSemiBold =
    GoogleFonts.ibmPlexSans().copyWith(fontWeight: FontWeight.w600);
TextStyle fontBold =
    GoogleFonts.ibmPlexSans().copyWith(fontWeight: FontWeight.w700);
TextStyle fontExtraBold =
    GoogleFonts.ibmPlexSans().copyWith(fontWeight: FontWeight.bold);

List<String> bannerData = [
  "assets/images/banner1.png",
  "assets/images/banner2.png",
  "assets/images/banner3.png"
];

List<Product> productData = [
  Product(
      id: 1,
      name: "Organic Banana",
      price: 4.99,
      description:
          "Organic bananas are bananas that are grown without man-made pesticides or herbicides, and are only in contact with natural fertilizers or composted organic material. The seeds are also organic, which means they are not from GMOs.",
      category: "Fruits & Vegetable",
      image: "assets/product/banana.png",
      rating: Rating(rate: 3.9, count: 120)),
  Product(
      id: 2,
      name: "Red Apple",
      price: 7.33,
      description:
          "Red Delicious apples are a classic variety of apple that are medium to large in size, with a deep red color and a conical shap",
      category: "Fruits & Vegetable",
      image: "assets/product/apple.png",
      rating: Rating(rate: 4.1, count: 259)),
  Product(
      id: 3,
      name: "Ginger",
      price: 3.99,
      description:
          "Ginger is a perennial plant with a thick, knotted underground stem called a rhizome, and it's known for its spicy flavor and aroma",
      category: "Fruits & Vegetable",
      image: "assets/product/ginger.png",
      rating: Rating(rate: 4.7, count: 500)),
  Product(
      id: 4,
      name: "Red bell peppers",
      price: 3.99,
      description:
          "Red bell peppers have a smooth, uniformly colored skin and three to four thick-walled lobes. They are botanically classified as berries and are mostly hollow, with a large number of cream-colored seeds",
      category: "Fruits & Vegetable",
      image: "assets/product/bell_pepper_red.png",
      rating: Rating(rate: 4.2, count: 343)),
  Product(
      id: 5,
      name: "Beef bone",
      price: 19.99,
      description:
          "Beef bones come from various cuts of beef, such as shanks, oxtails, and marrow bones. They are made of protein, collagen, and minerals, especially calcium.",
      category: "Meat & Fish",
      image: "assets/product/beef.png",
      rating: Rating(rate: 4.2, count: 343)),
  Product(
      id: 6,
      name: "Broiler chicken",
      price: 22.99,
      description:
          "Broiler chickens are raised primarily for meat rather than to lay eggs. These poultry are often white and are bred to be large and very healthy, often with more breast meat for the consumer market. Broiler chicken breeds grow very fast and offer good value in terms of protein and calories.",
      category: "Meat & Fish",
      image: "assets/product/chicken.png",
      rating: Rating(rate: 3.9, count: 111)),
  Product(
      id: 7,
      name: "Coca Cola Can",
      price: 2.99,
      description:
          "Coca-Cola cans come in a variety of sizes. A common size is 0.33 liters",
      category: "Meat & Fish",
      image: "assets/product/coca_cola.png",
      rating: Rating(rate: 4.5, count: 341)),
  Product(
      id: 8,
      name: "Sprite",
      price: 2.79,
      description:
          "Sprite is a lemon-lime flavored, clear, sparkling soft drink with a crisp taste",
      category: "Meat & Fish",
      image: "assets/product/sprite.png",
      rating: Rating(rate: 4.5, count: 341)),
];

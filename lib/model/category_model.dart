import 'package:flutter/material.dart';

class CategoriesModel{
  String id;
  String title;
  String imageName;
  Color background;
  CategoriesModel({
    required this.id,
    required this.title,
    required this.imageName,
    required this.background
  });
  static List<CategoriesModel> getAllCategories() => [
    CategoriesModel(id: "sports", title: "Sports", imageName: "sports.png", background: const Color(0xFFC91C22)),
    CategoriesModel(id: "politics", title: "Politics", imageName: "Politics.png", background: const Color(0xFF003E90)),
    CategoriesModel(id: "health", title: "Health", imageName: "health.png", background: const Color(0xFFED1E79)),
    CategoriesModel(id: "business ", title: "Business ", imageName: "bussines.png", background: const Color(0xFFCF7E48)),
    CategoriesModel(id: "environment", title: "Environment", imageName: "environment.png", background: const Color(0xFF4882CF)),
    CategoriesModel(id: "science", title: "Science", imageName: "science.png", background: const Color(0xFFF2D352)),
  ];
}
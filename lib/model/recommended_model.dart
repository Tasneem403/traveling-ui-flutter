import 'package:flutter/material.dart';

class RecommendedModel{
  final String image;
  final double rating;
  final String location;

  RecommendedModel({
    required this.image,
    required this.rating,
    required this.location,
  });
}

List<RecommendedModel> recommendedModel = [
  RecommendedModel(
    image: "images/place1.png",
    rating: 4.4,
    location: "St Regis Bora Bora",
    ),
    RecommendedModel(
    image: "images/place2.png",
    rating: 4.4,
    location: "St Regis Bora Bora",
    ),
    RecommendedModel(
    image: "images/place3.png",
    rating: 4.4,
    location: "St Regis Bora Bora",
    ),
    RecommendedModel(
    image: "images/place4.png",
    rating: 4.4,
    location: "St Regis Bora Bora",
    ),
    RecommendedModel(
    image: "images/place5.png",
    rating: 4.4,
    location: "St Regis Bora Bora",
    ),
    RecommendedModel(
    image: "images/place6.png",
    rating: 4.4,
    location: "St Regis Bora Bora",
    ),
    RecommendedModel(
    image: "images/place1.png",
    rating: 4.4,
    location: "St Regis Bora Bora",
    ),
];
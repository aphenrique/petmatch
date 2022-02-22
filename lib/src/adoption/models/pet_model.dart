import 'package:flutter/material.dart';

class PetModel {
  final String name;
  final String breed;
  final double age;
  final double distance;
  final String photo;
  final Color backGroundColor;
  final String gender;

  PetModel({
    required this.name,
    this.breed = 'Abyssinian cat',
    required this.age,
    required this.distance,
    required this.photo,
    required this.backGroundColor,
    required this.gender,
  });

  static final pets = [
    PetModel(
      name: 'Sola',
      age: 2,
      distance: 3.6,
      photo: 'assets/images/cat2.png',
      backGroundColor: const Color(0XFFacbfc4),
      gender: 'f',
    ),
    PetModel(
      name: 'Orion',
      age: 1.5,
      distance: 7.8,
      photo: 'assets/images/cat1.png',
      backGroundColor: const Color(0XFFecd6b1),
      gender: 'm',
    )
  ];
}

import 'package:flutter/material.dart';
import 'package:newnewnew/models/food.dart';

class Cart extends ChangeNotifier {
  List<Food> foodShop = [
    Food(
        name: 'Petheria',
        price: '189',
        imagePath: 'images/Petheriakitten.jpg',
        description: 'แมวเด็ก'),
    Food(
        name: 'Royal Canin',
        price: '179',
        imagePath: 'images/Royallcaninkitten.jpg',
        description: 'แมวเด็ก'),
    Food(
        name: 'Buzz',
        price: '339',
        imagePath: 'images/Buzzkitten.jpg',
        description: 'แมวเด็ก'),
    Food(
        name: 'Royal Canin',
        price: '215',
        imagePath: 'images/Kanivakiten.jpg',
        description: 'แมวเด็ก'),
    Food(
        name: 'Buzz',
        price: '420',
        imagePath: 'images/buzz_adult.jpg',
        description: 'แมวโต'),
    Food(
        name: 'Kaniva',
        price: '215',
        imagePath: 'images/kaniva_adult.jpg',
        description: 'แมวโต'),
    Food(
        name: 'Petheria',
        price: '218',
        imagePath: 'images/petheria_adult.jpg',
        description: 'แมวโต'),
    Food(
        name: 'Purina One',
        price: '159',
        imagePath: 'images/purinaone_adult.jpg',
        description: 'แมวโต'),
    Food(
        name: 'Pettheria',
        price: '189',
        imagePath: 'images/Petheria_old.jpg',
        description: 'แมวชรา'),
    Food(
        name: 'Purina One',
        price: '700',
        imagePath: 'images/purinaone_old.jpg',
        description: 'แมวชรา'),
    Food(
        name: 'Royal Canin',
        price: '215',
        imagePath: "images/royalcanin_old.jpg",
        description: 'แมวชรา'),

  ];
  List<Food> userCart = [];
  List<Food> getFoodList() {
    return foodShop;
  }

  List<Food> getUserCart() {
    return userCart;
  }

  void addItemToCart(Food food) {
    userCart.add(food);
    notifyListeners();
  }

  void removeItemFromCart(Food food) {
    userCart.remove(food);
    notifyListeners();
  }
}

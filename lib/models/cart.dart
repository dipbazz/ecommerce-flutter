import 'package:ecommerce/models/shoe.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  List<Shoe> shoeShope = [
    Shoe(
        name: "Zoom FREAK",
        price: "234",
        imagePath: 'lib/images/air.webp',
        description: "Best nike Air shoe"),
    Shoe(
        name: "Air Jordan",
        price: "344",
        imagePath: 'lib/images/jordan.webp',
        description: "Jordan that stands out with the refreshed look"),
    Shoe(
        name: "Running shoe",
        price: "134",
        imagePath: 'lib/images/shoes1.webp',
        description: "Best for running"),
    Shoe(
        name: "Traning",
        price: "234",
        imagePath: 'lib/images/training.webp',
        description: "Best for traning")
  ];

  List<Shoe> userCart = [];

  List<Shoe> getShoeList() {
    return shoeShope;
  }

  List<Shoe> getUserCart() {
    return userCart;
  }

  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}

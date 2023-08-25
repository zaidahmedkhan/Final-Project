import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  final List _shopItems = const [
    ["Avocado", "5.00", "assets/avocado.jpg", Colors.green],
    ["Banana", "3.00", "assets/banana.jpg", Colors.yellow],
    ["Chicken", "15.80", "assets/chicken.jpg", Colors.brown],
    ["Water", "4.00", "assets/bottle.jpg", Colors.blue],
  ];

  List _cartItems = [];

  get cartItems => _cartItems;

  get shopItems => _shopItems;

  void addItemToCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < cartItems.length; i++) {
      totalPrice += double.parse(cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}

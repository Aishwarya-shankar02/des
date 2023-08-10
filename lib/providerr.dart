import 'package:designing/modelclass.dart';
import 'package:flutter/material.dart';

class SelectedCardProvider with ChangeNotifier {
  List<Item> _items = [
    Item(
        productName: "Apple iPhone 11(64GB) \n- White ] \n  2019",
        image: "assets/images/61BGE6iu4AL._SX522_.jpg"),
    Item(
        productName: "Apple iPhone\n 14 Pro Max \n  (128 GB)  - Gold  2022",
        image: "assets/images/31DaY6l18YL._SY445_SX342_QL70_FMwebp_.webp"),
    Item(
        productName: "Apple iPhone 14  Plus \n (128 GB) - Blue",
        image: "assets/images/414Z3g1cIbL._SY445_SX342_QL70_FMwebp_.webp"),
    Item(
        productName: "Apple iPhone 14 \n Plus (128 GB) - Blue",
        image: "assets/images/61BGE6iu4AL._SX522_.jpg")
  ];
  List<Item> get items => _items;

  List<Item> get favoriteItems =>
      _items.where((item) => item.isFavorite).toList();

  void toggleFavorite(int index) {
    _items[index].isFavorite = !_items[index].isFavorite;
    notifyListeners();
  }
}

//
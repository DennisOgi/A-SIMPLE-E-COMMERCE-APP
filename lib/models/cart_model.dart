import 'package:flutter/cupertino.dart';
import 'package:todo/models/items_model.dart';

class Cart extends ChangeNotifier {
  // List of items for sale
  List<Item> itemShop = [
    Item(
      itemName: "Alabbsy Chips",
      itemprice: "#100",
      itemimage: "lib/assets/chips.jpeg",
      description:
          "These sweet plantain chips are made by thinly slicing ripe and unripe plantains and frying them lightly in oil",
    ),
    Item(
      itemName: "Alabbsy Chin-Chin",
      itemprice: "#100",
      itemimage: "lib/assets/chin.jpeg",
      description: "Chin-Chin",
    ),
    Item(
      itemName: "Alabbsy Zobo",
      itemprice: "#100",
      itemimage: "lib/assets/zozo.jpeg",
      description: "Zobo",
    )
  ];

  // list of items in user cart
  List<Item> userCart = [];

  // get list of items for sale

  List<Item> getItemList() {
    return itemShop;
   }

  // get cart
  List<Item> getUserCart() {
    return userCart;
  }

  // add items to cart
  void addItemToCart(Item item) {
    userCart.add(item);
    notifyListeners();
  }

  // remove items from cart
  void removeItem(Item item) {
    userCart.remove(item);
    notifyListeners();
  }

  void removeItemFromCart(Item item) {
    userCart.remove(item);
    notifyListeners();
  }
}

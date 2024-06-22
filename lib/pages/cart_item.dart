import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:todo/components/neu_box.dart';
import 'package:todo/models/cart_model.dart';
import 'package:todo/models/items_model.dart';

class CartItem extends StatefulWidget {
  Item item;
  CartItem({
    super.key,
    required this.item,
  });

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  void removeItemFromCart() {
    Provider.of<Cart>(context, listen: false).removeItemFromCart(widget.item);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(boxShadow: [
        // darker shadow on the bottom right
        BoxShadow(
            color: Colors.grey.shade500, blurRadius: 15, offset: Offset(5, 5)),

        // lighter shadow on the top left
        BoxShadow(color: Colors.white, blurRadius: 15, offset: Offset(-5, -5))
      ], color: Colors.grey[300], borderRadius: BorderRadius.circular(12)),
      margin: const EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading: Image.asset(widget.item.itemimage),
        title: Text(
          widget.item.itemName,
          style:
              GoogleFonts.ebGaramond(fontSize: 14, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          widget.item.itemprice,
          style: GoogleFonts.openSans(
              color: Colors.green, fontWeight: FontWeight.bold),
        ),
        trailing: IconButton(
          icon: Icon(Icons.delete),
          onPressed: removeItemFromCart,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:todo/models/cart_model.dart';
import 'package:todo/models/items_model.dart';
import 'package:todo/pages/item_tile.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  // add item to cart

  void addItemToCart(Item item) {
    Provider.of<Cart>(context, listen: false).addItemToCart(item);

    // show dialog

    showDialog(
      context: context,
      builder: (context) => const AlertDialog(
        title: Text("Successfully added!"),
        content: Text("Check your cart"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Column(
        children: [
          Center(
            child: Column(
              children: [
                Image.asset(
                  "lib/assets/chef.png",
                  height: 30,
                  width: 50,
                ),
                Text(
                  "Alabbsy Foods",
                  style: GoogleFonts.ebGaramond(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text(
                  "            Ever tasty...",
                  style: GoogleFonts.dancingScript(
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 200, top: 20, bottom: 20),
            child: Text(
              "Offerings",
              style: GoogleFonts.ebGaramond(
                  fontSize: 16, fontWeight: FontWeight.bold),
              textAlign: TextAlign.start,
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: value.itemShop.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                Item item = value.getItemList()[index];
                return Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: ItemTile(
                    onTap: () => addItemToCart(item),
                    item: item,
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

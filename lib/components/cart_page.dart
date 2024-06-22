import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:todo/models/cart_model.dart';
import 'package:todo/models/items_model.dart';
import 'package:todo/pages/cart_item.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "My Cart",
              style: GoogleFonts.ebGaramond(
                  fontSize: 25, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: value.getUserCart().length,
                itemBuilder: (context, index) {
                  Item individualItem = value.getUserCart()[index];
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: CartItem(
                      item: individualItem,
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

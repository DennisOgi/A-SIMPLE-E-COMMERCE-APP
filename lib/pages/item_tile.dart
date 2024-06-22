import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo/models/items_model.dart';

class ItemTile extends StatelessWidget {
  void Function()? onTap;
  Item item;
  ItemTile({
    super.key,
    required this.item,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20),
      width: 280,
      decoration: BoxDecoration(
        boxShadow: [
          // darker shadow on the bottom right
          BoxShadow(
              color: Colors.grey.shade500,
              blurRadius: 15,
              offset: Offset(5, 5)),

          // lighter shadow on the top left
          BoxShadow(color: Colors.white, blurRadius: 15, offset: Offset(-5, -5))
        ],
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 5,
          ),
          // ITEM IMAGE
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              item.itemimage,
              height: 160,
              width: 160,
            ),
          ),

          // DESCRIPTION
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              item.description,
              style: GoogleFonts.ebGaramond(fontSize: 14, color: Colors.black),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 100),
            child: Divider(
              color: Colors.black,
            ),
          ),

          // PRICE AND DETAILS
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15, bottom: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.itemName,
                      style: GoogleFonts.ebGaramond(
                          fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Text(
                      item.itemprice,
                      style: GoogleFonts.openSans(
                          fontSize: 12, color: Colors.green),
                    )
                  ],
                ),
              ),
              GestureDetector(
                onTap: onTap,
                child: Container(
                  padding: EdgeInsets.all(15),
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(12),
                      topLeft: Radius.circular(12),
                    ),
                  ),
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          )

          // ADD TO CART
        ],
      ),
    );
  }
}

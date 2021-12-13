

import 'package:flutter/material.dart';
import 'package:the_hive_shop/constants.dart';
import 'package:the_hive_shop/models/product.dart';
import 'package:the_hive_shop/screens/details/details_screen.dart';

class ItemCard extends StatelessWidget {
  final Product? product;
  final VoidCallback?  press;

  const ItemCard({Key? key, this.product,  this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(KDefaultPaddin),
              //for demo we user  fixed height and width
              //now we dont need them
              // height: 180,
              // width: 160,
              decoration: BoxDecoration(
                  color: product!.color,
                  borderRadius: BorderRadius.circular(16)),
              child: Hero(
                  tag: "${product!.id}",
                  child: Image.asset(product!.image)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: KDefaultPaddin / 4),
            child: Text(
              product!.title,
              style: TextStyle(color: KTextLightColor),
            ),
          ),
          Text(
            "\$" + "${product!.price}",
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}

import 'package:ecommerce_getx/models/product.dart';
import 'package:flutter/material.dart';

class ProductItemsDisplay extends StatelessWidget {
  final Product product;
   ProductItemsDisplay({required this.product});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 160,width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(

                  image: NetworkImage(product.image),fit: BoxFit.cover)

              ),
            ),
          )
      ],
    );
  }
}
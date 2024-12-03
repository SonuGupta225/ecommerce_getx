

import 'package:ecommerce_getx/get%20Controller/product_controller.dart';
import 'package:ecommerce_getx/screen/product_items_display.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
   Home({super.key});
  final productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.orange,
      body:Column(
        children: [
          Expanded(child: Obx((){
           return GridView.builder(
            itemCount: productController.productItem.length,
              gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                ) ,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Container(
                    color: const Color.fromARGB(255, 142, 99, 33),

                    ),
                    ProductItemsDisplay(product: productController.productItem[index]),
                  ],
                );
              },);
          }))
        ],
      )
    );           
  }
}
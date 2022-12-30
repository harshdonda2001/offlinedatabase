import 'package:flutter/material.dart';
import 'package:flutter_application_4/controller/productcontroller.dart';
import 'package:get/get.dart';

class ProductScreen extends StatelessWidget {
  ProductController productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("product"),
      ),
      body: GetBuilder<ProductController>(
        builder: (controller) {
          return Column(
            children: [
              Expanded(
                  child: Container(
                child: ListView.builder(
                  itemCount: productController.productModel?.products.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      child: Column(
                        children: [
                          Text(
                            productController
                                .productModel!.products[index].category,
                          ),
                          Text(productController
                              .productModel!.products[index].description)
                        ],
                      ),
                    );
                  },
                ),
              ))
            ],
          );
        },
      ),
    );
  }
}

import 'dart:ffi';

import 'package:flutter_application_4/model/productmodel.dart';
import 'package:get/get.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class ProductController extends GetxController implements GetxService {
  ProductModel? productModel;
  bool isloading = true;
  ProductController() {
    getdata();
  }

  getdata() async {
    var Response = await http.get(Uri.parse('https://dummyjson.com/products'));
    if (Response.statusCode == 200) {
      var result = jsonDecode(Response.body);

      productModel = ProductModel.fromJson(result);
      isloading = true;
      update();
      print("########$Response");
    } else {
      print("###########");
    }
  }
}

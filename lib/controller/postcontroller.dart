import 'dart:convert';

import 'package:flutter_application_4/model/postmodel.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class PostController extends GetxController implements GetxService {
  List<PostModel> postModel = [];
  bool isloading = true;
  PostController() {
    getdata();
  }

  getdata() async {
    var Response =
        await http.get(Uri.parse('https://gorest.co.in/public/v2/posts'));
    if (Response.statusCode == 200) {
      var result = jsonDecode(Response.body);
      int len = result.length;
      print('length = $len');
      for (dynamic data in result) {
        postModel.add(PostModel.fromJson(data));
      }
      isloading = false;
      update();
      print("###############+$Response");
    } else {
      print("###########");
    }
  }
}

import 'package:flutter_application_4/model/commentsmodel.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class CommentsController extends GetxController implements GetxService {
  List<CommentsModel> commentsmodel = [];
  bool isloading = true;
  CommentsController() {
    getdata();
  }
  getdata() async {
    var response =
        await http.get(Uri.parse('https://gorest.co.in/public/v2/comments'));
    if (response.statusCode == 200) {
      var result = jsonDecode(response.body);
      for (dynamic data in result) {
        commentsmodel.add(CommentsModel.fromJson(data));
      }
      isloading = false;
      update();
    } else {
      print("##########");
    }
  }
}

import 'package:flutter_application_4/model/dbmodel.dart';
import 'package:get/get.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class DbController extends GetxController implements GetxService {
  List<Dbmodel> dbmodel = [];
  bool isLoading = true;
  DbController() {
    getdata();
  }

  getdata() async {
    var Response = await http.get(
        Uri.parse('https://jsonplaceholder.typicode.com/comments?postId=1'));
    if (Response.statusCode == 200) {
      var result = jsonDecode(Response.body);
      for (dynamic data in result) {
        dbmodel.add(Dbmodel.fromJson(data));
      }
      isLoading = true;
      update();
    } else {
      print("###########");
    }
  }
}

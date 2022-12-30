import 'package:flutter_application_4/model/familymodel.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class FamilyController extends GetxController implements GetxService {
  List<Family> family = [];
  bool isloading = true;
  FamilyController() {
    getdata();
  }
  getdata() async {
    var Response =
        await http.get(Uri.parse('https://gorest.co.in/public/v2/users'));
    if (Response.statusCode == 200) {
      var result = jsonDecode(Response.body);
      for (dynamic data in result) {
        family.add(Family.fromJson(data));
      }
      isloading = false;
      update();
    } else {
      print("###########");
    }
  }
}

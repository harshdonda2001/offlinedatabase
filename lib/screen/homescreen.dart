import 'package:flutter/material.dart';
import 'package:flutter_application_4/controller/familycontroller.dart';
import 'package:get/get.dart';

class Homescreen extends StatelessWidget {
  FamilyController familyController = Get.put(FamilyController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("family member"),
      ),
      body: GetBuilder<FamilyController>(
        builder: (controller) {
          return Column(
            children: [
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: familyController.family.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      title: Text(familyController.family[index].name),
                      subtitle: Text(familyController.family[index].email),
                      leading: Text(familyController.family[index].gender),
                      trailing: Text(familyController.family[index].status),
                    );
                  },
                ),
              )
            ],
          );
        },
      ),
    );
  }
}

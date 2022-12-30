import 'package:flutter/material.dart';
import 'package:flutter_application_4/controller/dbcontroller.dart';
import 'package:get/get.dart';

class Datascreen extends StatelessWidget {
  DbController dbController = Get.put(DbController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("data"),
      ),
      body: GetBuilder<DbController>(
        builder: (controller) {
          return Column(
            children: [
              Expanded(
                child: Container(
                  child: ListView.builder(
                    itemCount: dbController.dbmodel.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        child: ListTile(
                          leading:
                              Text(dbController.dbmodel[index].id.toString()),
                          title: Text(dbController.dbmodel[index].name),
                          subtitle: Text(dbController.dbmodel[index].email),
                        ),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            color: Colors.yellow),
                      );
                    },
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}

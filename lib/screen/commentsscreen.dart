import 'package:flutter/material.dart';
import 'package:flutter_application_4/controller/commentscoontroller.dart';
import 'package:flutter_application_4/model/commentsmodel.dart';
import 'package:get/get.dart';

class CommentsScreen extends StatelessWidget {
  CommentsController commentsController = Get.put(CommentsController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Comments"),
      ),
      body: GetBuilder<CommentsController>(
        builder: (controller) {
          return Column(
            children: [
              Expanded(
                  child: Container(
                child: ListView.builder(
                  itemCount: commentsController.commentsmodel.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(commentsController.commentsmodel[index].id
                              .toString()),
                          Text(commentsController.commentsmodel[index].name),
                          Text(commentsController.commentsmodel[index].email),
                          Text(commentsController.commentsmodel[index].body),
                          Text(commentsController.commentsmodel[index].postId
                              .toString()),
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

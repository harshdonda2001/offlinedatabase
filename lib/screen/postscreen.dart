import 'package:flutter/material.dart';
import 'package:flutter_application_4/controller/postcontroller.dart';
import 'package:flutter_application_4/model/postmodel.dart';
import 'package:get/get.dart';

class PostScreen extends StatelessWidget {
  PostController postController = Get.put(PostController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("post"),
      ),
      body: GetBuilder<PostController>(
        builder: (controller) {
          return Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: postController.postModel.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      child: ListTile(
                        leading:
                            Text(postController.postModel[index].id.toString()),
                        title: Text(postController.postModel[index].title),
                        subtitle: Text(postController.postModel[index].body),
                        trailing: Text(
                            postController.postModel[index].userId.toString()),
                      ),
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

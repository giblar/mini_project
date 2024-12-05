import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/list_picture_controller.dart';

class ListPictureView extends StatelessWidget {
  final ListPictureController controller = Get.put(ListPictureController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('List of Pictures')),
      body: Obx(() {
        if (controller.isLoading.value) {
          return Center(child: CircularProgressIndicator());
        }

        return ListView.builder(
          itemCount: controller.pictures.length,
          itemBuilder: (context, index) {
            final picture = controller.pictures[index];
            return ListTile(
              leading: Image.network(picture['download_url'], width: 50, height: 50),
              title: Text(picture['author']),
              onTap: () {
                Get.toNamed('/detail', arguments: picture['id']);
              },
            );
          },
        );
      }),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:guia_api/http/http_controller.dart';
import 'package:guia_api/model/user_model.dart';

class HttpPage extends GetView<HttpController> {
  const HttpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Api HTTP'),
      ),
      body: controller.obx(
        (state) {
          return ListView.builder(
            itemCount: state.length,
            itemBuilder: (_, index) {
              final UserModel item = state[index];
              return ListTile(
                title: Text(
                  item.name,
                  style: const TextStyle(color: Colors.deepPurple),
                ),
                subtitle: Text('ID: ${item.id.toString()}'),
              );
            },
          );
        },
        onError: (error) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                  onPressed: () => controller.findUsers(),
                  child: const Text('Tentar Novamente'))
            ],
          );
        },
      ),
    );
  }
}

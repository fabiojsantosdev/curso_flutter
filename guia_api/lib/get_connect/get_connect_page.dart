import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:guia_api/get_connect/get_connect_controller.dart';
import 'package:guia_api/model/user_model_get.dart';

class GetConnectPage extends GetView<GetConnectController> {
  const GetConnectPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Api GetConnect'),
      ),
      body: controller.obx(
        (state) {
          return ListView.builder(
            itemCount: state.length,
            itemBuilder: (_, index) {
              final UserModelGet item = state[index];
              return ListTile(
                title: Text(
                  item.username,
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
              Center(
                child: TextButton(
                    onPressed: () => controller.findUsers(),
                    child: const Text('Tentar Novamente')),
              )
            ],
          );
        },
      ),
    );
  }
}

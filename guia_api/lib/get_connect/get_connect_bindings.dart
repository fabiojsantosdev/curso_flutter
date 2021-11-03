import 'package:get/get.dart';
import 'package:guia_api/get_connect/get_connect_controller.dart';
import 'package:guia_api/get_connect/repository/user_repository_get_connect.dart';
import 'package:guia_api/repository/i_user_repository_get.dart';

class GetConnectBindings implements Bindings {
  @override
  void dependencies() {
    Get.put<IUserRepositoryGet>(UserRepositoryGetConnect(Get.find()));
    Get.put(GetConnectController(Get.find()));
  }
}

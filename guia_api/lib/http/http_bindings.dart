import 'package:get/get.dart';
import 'package:guia_api/http/http_controller.dart';
import 'package:guia_api/http/repository/user_http_repository.dart';
import 'package:guia_api/repository/i_user_repository.dart';

class HttpBindings implements Bindings {
  @override
  void dependencies() {
    Get.put<IUserRepository>(UserHttpRepository());
    Get.put(HttpController(Get.find()));
  }
}
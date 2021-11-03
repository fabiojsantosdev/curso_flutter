import 'package:get/get.dart';
import 'package:guia_api/shared/rest_client.dart';

class HomeBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(RestClient());
  }
}

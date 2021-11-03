// ignore_for_file: non_constant_identifier_names, avoid_print

import 'package:get/get.dart';
import 'package:guia_api/repository/i_user_repository_get.dart';

class GetConnectController extends GetxController with StateMixin {
  final IUserRepositoryGet _getRepostory;

  GetConnectController(this._getRepostory);

  @override
  void onInit() {
    super.onInit();
    findUsers();
  }

  Future<void> findUsers() async {
    change([], status: RxStatus.loading());
    try {
      final dados = await _getRepostory.findAUsers();
      change(dados, status: RxStatus.success());
    } on Exception catch (e) {
      print(e);
      change([], status: RxStatus.error());
    }
  }
}

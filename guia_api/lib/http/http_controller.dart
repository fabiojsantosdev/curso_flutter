// ignore_for_file: avoid_print, non_constant_identifier_names

import 'package:get/get.dart';
import 'package:guia_api/repository/i_user_repository.dart';

class HttpController extends GetxController with StateMixin {
  final IUserRepository _HttpRepository;

  HttpController(this._HttpRepository);

  @override
  void onInit() {
    super.onInit();
    findUsers();
  }

  Future<void> findUsers() async {
    change([], status: RxStatus.loading());
    try {
      final dados = await _HttpRepository.findAllUsers();
      change(dados, status: RxStatus.success());
    } on Exception catch (e) {
      print(e);
      change([], status: RxStatus.error());
    }
  }
}

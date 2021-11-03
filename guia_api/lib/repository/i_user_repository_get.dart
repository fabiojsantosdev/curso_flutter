import 'package:guia_api/model/user_model_get.dart';

abstract class IUserRepositoryGet {
  Future<List<UserModelGet>> findAUsers();
}

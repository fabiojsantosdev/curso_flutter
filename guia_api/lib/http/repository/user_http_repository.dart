import 'dart:convert';
import 'package:guia_api/model/user_model.dart';
import 'package:guia_api/repository/i_user_repository.dart';
import 'package:http/http.dart' as http;

class UserHttpRepository implements IUserRepository {
  @override
  Future<List<UserModel>> findAllUsers() async {
    var url = 'https://618046518bfae60017adfa51.mockapi.io/api/users';
    final response = await http.get(Uri.parse(url));
    final List<dynamic> responseMap = jsonDecode(response.body);
    return responseMap
        .map<UserModel>((resp) => UserModel.fromMap(resp))
        .toList();
  }
}

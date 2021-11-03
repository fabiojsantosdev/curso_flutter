import 'package:guia_api/model/user_model_get.dart';
import 'package:guia_api/repository/i_user_repository_get.dart';
import 'package:guia_api/shared/rest_client.dart';

class UserRepositoryGetConnect implements IUserRepositoryGet {
  final RestClient restClient;

  UserRepositoryGetConnect(this.restClient);

  @override
  Future<List<UserModelGet>> findAUsers() async {
    var url = 'https://6181c95b84c2020017d89ba8.mockapi.io/api/users';
    final response = await restClient.get(url, decoder: (body) {
      if (body is List) {
        return body
            .map<UserModelGet>((resp) => UserModelGet.fromMap(resp))
            .toList();
      }
      return null;
    });

    if (response.hasError) {
      throw Exception('Erro buscar usuários');
    }
    return response.body!;
  }
}

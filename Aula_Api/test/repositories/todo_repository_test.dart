import 'package:consumir_api/app/repositories/todo_repository.dart';
import 'package:flutter_test/flutter_test.dart';

void main(){

  final repositoru = TodoRepository();

  test('Deve trazer uma lista de TodoModel', () async {

      final list = await repositoru.fetchTodos();
      print(list[0].title);
      expect(list[0].title, 'delectus aut autem');

  });
}
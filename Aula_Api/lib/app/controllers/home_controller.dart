import 'package:consumir_api/app/models/todo_model.dart';
import 'package:consumir_api/app/repositories/todo_repository.dart';
import 'package:flutter/material.dart';

class HomeController {
  List<TodoModel> todos = [];
  final repository = TodoRepository();
  final state = ValueNotifier<HomeState>(HomeState.start);


  start() async {
    state.value = HomeState.loading;
    try {
      todos = await repository.fetchTodos();
      state.value = HomeState.success;
    }catch (e){
      state.value = HomeState.error;
    }
  }
}

enum HomeState { start, loading, success, error}
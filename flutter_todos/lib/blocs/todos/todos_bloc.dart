import 'package:bloc/bloc.dart';
import 'package:flutter_todos/blocs/todos/todos_event.dart';
import 'package:flutter_todos/blocs/todos/todos_state.dart';
import 'package:todos_repository_simple/todos_repository_simple.dart';

class TodosBloc extends Bloc<TodosEvent, TodosState> {
  final TodosRepositoryFlutter todosRepository;
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_infinite_list/counter/bloc/counter_bloc.dart';
import 'package:flutter_infinite_list/post/bloc/post_bloc.dart';

class CounterView extends StatelessWidget {
  const CounterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Counter')),
      body: Center(
          child: Container(
              child: Column(
        children: [
          BlocBuilder<CounterBloc, CounterState>(
            builder: (context, state) {
              return Text("${state.count}");
            },
          ),
          BlocProvider(
            create: (_) => CounterBloc(),
            child: BlocBuilder<PostBloc, PostState>(builder: (context, state) {
              switch (state.status) {
                case PostStatus.success:
                  return Text("hello");
                default:
                  return Text("Hi");
              }
            }),
          ),
        ],
      ))),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            key: const Key('counterView_increment_floatingActionButton'),
            child: const Icon(Icons.add),
            onPressed: () => context.read<CounterBloc>().add(Increment()),
          ),
        ],
      ),
    );
  }
}

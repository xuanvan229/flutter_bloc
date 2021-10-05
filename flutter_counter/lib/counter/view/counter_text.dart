import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_counter/counter/cubit/counter_cubit.dart';

class CounterText extends StatelessWidget {
  const CounterText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("This one only render one time");

    return Container(
      child: BlocBuilder<CounterCubit, int>(
        builder: (context, count) {
          return Text('$count', key: Key('counter'));
        },
      ),
    );
  }
}

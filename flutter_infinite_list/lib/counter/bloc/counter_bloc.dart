import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState()) {
    on<Increment>(
      _increment,
    );
  }

  Future<void> _increment(Increment event, Emitter<CounterState> emit) async {
    return emit(state.copyWidth(count: state.count + 1));
  }
}

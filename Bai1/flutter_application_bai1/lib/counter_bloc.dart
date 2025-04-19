import 'package:flutter_bloc/flutter_bloc.dart';
import 'counter_event.dart';
import 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState(count: 0, isImage1: true)) {
    on<IncrementEvent>((event, emit) {
      emit(CounterState(
        count: state.count + 1,
        isImage1: !state.isImage1, 
      ));
    });
  }
}
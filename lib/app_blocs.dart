import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ulearning_app/app_events.dart';
import 'package:ulearning_app/app_states.dart';

class AppBlocs extends Bloc<AppEvents, AppState> {
  AppBlocs() : super(InitState()) {
    on<Increment>((event, emit) {
      emit(AppState(counter: state.counter + 1));
    });
    on<Decrement>((event, emit) {
      emit(AppState(counter: state.counter - 1));
    });
  }
}
